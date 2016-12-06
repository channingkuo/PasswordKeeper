#region 文件头部
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
作者 : Channing Kuo
日期 : 2016-11-23
说明 : 登录页面
****************/
#endregion
using CoreGraphics;
using Foundation;
using System;
using System.IO;
using System.Threading.Tasks;
using UIKit;
using CoreAnimation;
using iOS.Corelib.Views;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using LocalAuthentication;

namespace iOS.App.App.Views
{
	/// <summary>
	/// 登录页面
	/// </summary>
	public class LoginViewController : BaseViewController
	{
		private UITableView _tableView;
		UIWebView _webView;
		private UIViewBuilder _builder;
		private NSObject obs1, obs2;
		private nfloat _logoHeight;
		private UIImageView _myAvatarImageView;
		public string delegateString;

		/// <summary>
		/// 页面加载的时候
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			View.BackgroundColor = UIColor.White;
			_logoHeight = View.Bounds.Height / 4;

			_builder = new UIViewBuilder (this.View);
			_tableView = _builder.CreateTableView (new CGRect (UiStyleSetting.PaddingSizeLarge,
				0,
				View.Bounds.Width - UiStyleSetting.PaddingSizeLarge * 3,
				View.Bounds.Height));

			_tableView.BackgroundColor = UIColor.White;
			_tableView.SeparatorStyle = UITableViewCellSeparatorStyle.None;
			_tableView.ScrollEnabled = false;

			//修改状态栏背景颜色
			UIView statusview = new UIView (new CGRect (0, 0, View.Frame.Width, UiStyleSetting.StatusBarHeight));
			statusview.BackgroundColor = UIColor.White;
			View.AddSubview (statusview);
		}

		/// <summary>
		/// 页面每次出现时执行
		/// </summary>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
			this.NavigationController.SetNavigationBarHidden (true, true);
			_tableView.Source = new Source (this);
			_tableView.ReloadData ();

			if (GlobalAppSetting.IsInBackground && UIDevice.CurrentDevice.CheckSystemVersion (10, 0)) {
				var context = new LAContext ();
				NSError AuthError;
				var myReason = new NSString ("通过Home键验证手机的Touch ID");
				if (context.CanEvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, out AuthError)) {
					var replyHandler = new LAContextReplyHandler ((success, error) => {
						this.InvokeOnMainThread (() => {
							if (success) {
								AlertUtil.Error ("Touch ID通过");
								GlobalAppSetting.IsInBackground = false;
							} else {
								AlertUtil.Error ("Touch ID未通过");
							}
						});
					});
					context.EvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, myReason, replyHandler);
				}
			}

			obs1 = NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.WillShowNotification, delegate (NSNotification n) {
				var duration = UIKeyboard.AnimationDurationFromNotification (n);

				UIView.BeginAnimations ("ResizeForKeyboard");
				UIView.SetAnimationDuration (duration);
				var contentInsets = new UIEdgeInsets (-(_logoHeight - 15), 0, 0, 0);
				_tableView.ContentInset = contentInsets;
				_tableView.ScrollIndicatorInsets = contentInsets;
				UIView.CommitAnimations ();
			});

			obs2 = NSNotificationCenter.DefaultCenter.AddObserver (UIKeyboard.WillHideNotification, delegate (NSNotification n) {
				var duration = UIKeyboard.AnimationDurationFromNotification (n);
				UIView.BeginAnimations ("ResizeForKeyboard");
				UIView.SetAnimationDuration (duration);
				var contentInsets = new UIEdgeInsets (0, 0, 0, 0);
				_tableView.ContentInset = contentInsets;
				_tableView.ScrollIndicatorInsets = contentInsets;
				UIView.CommitAnimations ();
			});
		}

		public override void ViewDidDisappear (bool animated)
		{
			base.ViewDidDisappear (animated);
			NSNotificationCenter.DefaultCenter.RemoveObserver (obs1);
			NSNotificationCenter.DefaultCenter.RemoveObserver (obs2);
		}

		/// <summary>
		/// 页面将要消失时候执行
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillDisappear (bool animated)
		{
			this.NavigationController.NavigationBarHidden = false;
		}

		/// <summary>
		/// table类
		/// </summary>
		public class Source : UITableViewSource
		{
			UITextField _txtUserName, _txtPassword;
			CheckBoxView _chkIsRememberPassword;

			readonly CGRect _textRect;
			readonly CGRect _btnRect;
			UIButton _btnLogion;


			private readonly LoginViewController _c;

			/// <summary>
			/// table的构造函数
			/// </summary>
			/// <param name="c">C.</param>
			public Source (LoginViewController c)
			{
				_c = c;
				_textRect = new CGRect (UiStyleSetting.PaddingSizeLarge, 0, _c.View.Bounds.Width - UiStyleSetting.PaddingSizeLarge * 2, UiStyleSetting.HeightTextBox);
				_btnRect = new CGRect ((_c.View.Frame.Width - 125) / 2 - UiStyleSetting.PaddingSizeLarge, 0, 125, 35);
			}

			/// <summary>
			/// 每行选中时执行
			/// </summary>
			public override async void RowSelected (UITableView tableView, NSIndexPath indexPath)
			{
				await Task.Run (() => InvokeOnMainThread (() => _c.View.EndEditing (true)));
			}

			/// <summary>
			/// 设置每行的高度
			/// </summary>
			public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
			{
				if (indexPath.Section == 0) {
					if (indexPath.Row == 0)
						return _c._logoHeight;
					else if (indexPath.Row == 1)
						return 60;
					else
						return 60;
				} else {
					if (indexPath.Row == 0)
						return 70;
					else
						return 40;
				}
			}

			/// <summary>
			/// 每个section有几行
			/// </summary>
			public override nint RowsInSection (UITableView tableView, nint section)
			{
				if ((int)section == 0)
					return 3;
				else
					return 2;
			}

			/// <summary>
			/// 设置有多少节
			/// </summary>
			public override nint NumberOfSections (UITableView tableView)
			{
				return 2;
			}

			public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
			{
				if (indexPath.Section == 0) {
					if (indexPath.Row == 0)
						return CreateLogoCell (tableView);
					else if (indexPath.Row == 1)
						return CreateUserNameCell (tableView);
					else
						return CreatePasswordCell (tableView);
				} else {
					if (indexPath.Row == 0)
						return CreateSettingCell (tableView);
					else
						return CreateLoginButtonCell (tableView);
				}
			}

			/// <summary>
			/// 创建用户名的cell
			/// </summary>
			private UITableViewCell CreateUserNameCell (UITableView tableView)
			{
				const string cellIdentifier = "TableViewCellUserName";
				var cell = tableView.DequeueReusableCell (cellIdentifier);
				if (cell == null) {
					cell = new UITableViewCell (UITableViewCellStyle.Default, cellIdentifier);
					cell.SelectionStyle = UITableViewCellSelectionStyle.None;

					_txtUserName = new UITextField (_textRect);
					_txtUserName.Placeholder = " 请输入用户账号";
					_txtUserName.AdjustsFontSizeToFitWidth = true;
					_txtUserName.Font = UIFont.SystemFontOfSize (UiStyleSetting.Font_size_normal_01);
					var icon = new UIImageView (new CGRect (0, (_textRect.Height - 20) / 2, 20, 20));
					icon.Image = UIImage.FromFile ("login_user.png");
					_txtUserName.LeftViewMode = UITextFieldViewMode.Always;
					_txtUserName.LeftView = new UIView (new CGRect (0, 0, 20 + UiStyleSetting.PaddingSizeMedium, _textRect.Height));
					_txtUserName.LeftView.AddSubview (icon);
					_txtUserName.Text = GlobalAppSetting.UserCode;
					cell.ContentView.AddSubview (_txtUserName);

					var borderView = new UIView (new CGRect (_textRect.Left, _textRect.Height, _textRect.Width, 1F));
					borderView.BackgroundColor = UiStyleSetting.Color_weak_01;
					cell.ContentView.Add (borderView);

					_txtUserName.EditingChanged += (sender, e) => {
						if (GlobalAppSetting.IsRememberPassword)
							_txtPassword.Text = _txtUserName.Text != GlobalAppSetting.UserCode ? string.Empty : GlobalAppSetting.Password;
					};
				}

				return cell;
			}

			/// <summary>
			/// 创建密码的cell
			/// </summary>
			/// <returns>The password cell.</returns>
			/// <param name="tableView">Table view.</param>
			private UITableViewCell CreatePasswordCell (UITableView tableView)
			{
				const string cellIdentifier = "TableViewCellPassword";
				var cell = tableView.DequeueReusableCell (cellIdentifier);
				if (cell == null) {
					cell = new UITableViewCell (UITableViewCellStyle.Default, cellIdentifier);
					cell.SelectionStyle = UITableViewCellSelectionStyle.None;

					_txtPassword = new UITextField (_textRect);
					_txtPassword.Placeholder = " 请输入密码";
					_txtPassword.AdjustsFontSizeToFitWidth = true;
					_txtPassword.Font = UIFont.SystemFontOfSize (UiStyleSetting.Font_size_normal_01);
					var icon = new UIImageView (new CGRect (0, (_textRect.Height - 20) / 2, 20, 20));
					icon.Image = UIImage.FromFile ("login_password.png");
					_txtPassword.LeftViewMode = UITextFieldViewMode.Always;
					_txtPassword.LeftView = new UIView (new CGRect (0, 0, 20 + UiStyleSetting.PaddingSizeMedium, _textRect.Height));
					_txtPassword.LeftView.AddSubview (icon);
					_txtPassword.SecureTextEntry = true;
					_txtPassword.Text = GlobalAppSetting.Password;
					cell.ContentView.AddSubview (_txtPassword);

					var borderView = new UIView (new CGRect (_textRect.Left, _textRect.Height, _textRect.Width, 1F));
					borderView.BackgroundColor = UiStyleSetting.Color_weak_01;
					cell.ContentView.Add (borderView);
				}
				return cell;
			}

			private void LoginButtonClick (object sender, EventArgs e)
			{
				using (var t = new Toast ()) {
					try {
						_btnLogion.Enabled = false;
						t.ProgressWaiting ("正在登录...");
						if (_txtUserName.Text.ToLower () == "crmdc\\apple") {
							GlobalAppSetting.XrmWebApiBaseUrl = "http://crm.rektec.com.cn:18011";
						}

						_btnLogion.Enabled = true;
					} catch (Exception ex) {
						AlertUtil.Error (ex.Message);
						_btnLogion.Enabled = true;
					}
				}
			}

			/// <summary>
			/// 创建登录按钮的cell
			/// </summary>
			/// <returns>The login button cell.</returns>
			/// <param name="tableView">Table view.</param>
			private UITableViewCell CreateLoginButtonCell (UITableView tableView)
			{
				const string cellIdentifier = "TableViewCellLoginButton";
				UITableViewCell cell = tableView.DequeueReusableCell (cellIdentifier);

				if (cell == null) {
					cell = new UITableViewCell (UITableViewCellStyle.Default, cellIdentifier);
					cell.SelectionStyle = UITableViewCellSelectionStyle.None;

					_btnLogion = new UIButton (_btnRect);
					_btnLogion.Font = UIFont.SystemFontOfSize (UiStyleSetting.Font_size_normal_01);

					_btnLogion.Layer.BorderWidth = 0.5F;
					_btnLogion.Layer.BorderColor = UIColor.FromRGB (206, 26, 27).CGColor;
					_btnLogion.Layer.CornerRadius = 5;

					_btnLogion.SetTitle ("登 录", UIControlState.Normal);
					_btnLogion.SetTitleColor (UIColor.FromRGB (206, 26, 27), UIControlState.Normal);
					_btnLogion.SetTitleColor (UIColor.White, UIControlState.Highlighted);
					_btnLogion.SetTitleColor (UIColor.White, UIControlState.Selected);

					_btnLogion.SetBackgroundImage (ImageUtil.CreateImageWithColor (UIColor.White, (CGRect)_btnLogion.Bounds), UIControlState.Normal);
					_btnLogion.SetBackgroundImage (ImageUtil.CreateImageWithColor (UIColor.FromRGB (206, 26, 27), (CGRect)_btnLogion.Bounds), UIControlState.Highlighted);

					cell.AddSubview (_btnLogion);

					_btnLogion.TouchUpInside += LoginButtonClick;
				}

				return cell;
			}

			/// <summary>
			/// 创建显示logo的cell
			/// </summary>
			/// <returns>The logo cell.</returns>
			/// <param name="tableView">Table view.</param>
			private UITableViewCell CreateLogoCell (UITableView tableView)
			{
				const string cellIdentifier = "TableViewCellLogoLabel";
				UITableViewCell cell = tableView.DequeueReusableCell (cellIdentifier);

				if (cell == null) {
					nfloat logoWidth = 80F;
					nfloat left = (tableView.Frame.Width - logoWidth) / 2 + UiStyleSetting.PaddingSizeMedium;
					nfloat top = (_c._logoHeight - logoWidth) / 2 + UiStyleSetting.PaddingSizeLarge;

					cell = new UITableViewCell (UITableViewCellStyle.Default, cellIdentifier);
					cell.SelectionStyle = UITableViewCellSelectionStyle.None;

					_c._myAvatarImageView = new UIImageView (new CGRect (left, top, logoWidth, logoWidth));
					_c._myAvatarImageView.ContentMode = UIViewContentMode.ScaleAspectFit;

					_c._myAvatarImageView.Layer.BorderWidth = 0.5F;
					_c._myAvatarImageView.Layer.BorderColor = UIColor.FromRGB (206, 26, 27).CGColor;
					_c._myAvatarImageView.Layer.CornerRadius = logoWidth / 2;
					_c._myAvatarImageView.Layer.MasksToBounds = true;

					cell.ContentView.Add (_c._myAvatarImageView);

					var layer = new CALayer ();
					layer.Position = _c._myAvatarImageView.Layer.Position;
					layer.Bounds = _c._myAvatarImageView.Bounds;
					layer.CornerRadius = _c._myAvatarImageView.Layer.CornerRadius;
					layer.BackgroundColor = UIColor.White.CGColor;
					layer.ShadowColor = UIColor.FromRGB (255, 80, 80).CGColor;
					layer.ShadowRadius = 10F;
					layer.ShadowOffset = new CGSize (0F, 0F);
					layer.ShadowOpacity = 0.5F;
					cell.ContentView.Layer.AddSublayer (layer);
					cell.ContentView.BringSubviewToFront (_c._myAvatarImageView);

				}
				return cell;
			}

			/// <summary>
			/// 创建显示标语的cell
			/// </summary>
			/// <returns>The subject cell.</returns>
			/// <param name="tableView">Table view.</param>
			private UITableViewCell CreateSettingCell (UITableView tableView)
			{
				const string cellIdentifier = "TableViewCellsSubjectLabel";
				UITableViewCell cell = tableView.DequeueReusableCell (cellIdentifier);

				if (cell == null) {
					cell = new UITableViewCell (UITableViewCellStyle.Default, cellIdentifier);
					cell.SelectionStyle = UITableViewCellSelectionStyle.None;

					#region CheckBox Remember Password
					_chkIsRememberPassword = new CheckBoxView (new CGRect (UiStyleSetting.PaddingSizeLarge, 25, 120, 20),
						"记住密码", GlobalAppSetting.IsRememberPassword);
					_chkIsRememberPassword.TouchUpInside += (sender, e) => {
						GlobalAppSetting.IsRememberPassword = _chkIsRememberPassword.IsChecked;
						if (!GlobalAppSetting.IsRememberPassword) {
							GlobalAppSetting.Password = string.Empty;
						}
					};
					_chkIsRememberPassword.Font = UIFont.SystemFontOfSize (UiStyleSetting.Font_size_normal_01);
					_chkIsRememberPassword.SetTitleColor (UiStyleSetting.Color_normal_01, UIControlState.Normal);
					cell.AddSubview (_chkIsRememberPassword);
					#endregion

					#region Setting Button
					var font = UIFont.SystemFontOfSize (UiStyleSetting.Font_size_normal_01);
					var title = "  设置服务器";
					var size = title.StringSize (font);
					var settingSeverBtn = new IconButtonView (new CGRect (tableView.Frame.Width - size.Width - 25, 25, size.Width + 25, 20),
											  title, "ic_setting_red_02.png");
					settingSeverBtn.SetTitleColor (UIColor.FromRGB (206, 26, 27), UIControlState.Normal);
					settingSeverBtn.TouchUpInside += (sender, e) => {

					};
					settingSeverBtn.Font = font;
					cell.AddSubview (settingSeverBtn);
					#endregion

				}
				return cell;
			}
		}
	}
}

