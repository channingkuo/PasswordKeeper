#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者: Channing Guo
日期 : 2016-12-07
说明 : 主页
****************/
#endregion
using MonoTouch.Dialog;
using UIKit;
using iOS.Corelib.Configuration;
using LocalAuthentication;
using Foundation;
using iOS.Corelib.Utils;
using ObjCRuntime;
using System.IO;
using iOS.Corelib;
using CoreGraphics;

namespace iOS.App.Views
{
	/// <summary>
	/// 主页
	/// </summary>
	public class MainViewController : DialogViewController
	{
		RootElement _root;
		Section section;

		public MainViewController (RootElement r) : base (UITableViewStyle.Grouped, r, true)
		{
			_root = r;
			_root.Clear ();

			//-------------------------------------------------------------------------
			FileUtils.SaveFileContentToTmp ("11111111", "20161207211600-abc-123-qq.png-Alipay");
			FileUtils.SaveFileContentToTmp ("22222222", "20161207211600-def-123-qq.png-Alipay");
			FileUtils.SaveFileContentToTmp ("33333333", "20161207211600-ghi-123-qq.png-Alipay");
			FileUtils.SaveFileContentToTmp ("44444444", "20161207211600-jkl-123-qq.png-Alipay");
			//-------------------------------------------------------------------------

			section = new Section (new UIView (new CGRect (0, 0, View.Frame.Width, 0.5)));
			var infos = FileUtils.GetAllFileContentFromTmp ();
			foreach (var info in infos) {
				var infoElement = new StyledStringElement (info.Name) {
					Accessory = UITableViewCellAccessory.DisclosureIndicator,
					TextColor = UiStyleSetting.Color_normal_01,
					Font = UIFont.SystemFontOfSize (UiStyleSetting.FontDetailSize),
					BackgroundColor = UIColor.White,
					Image = UIImage.FromFile (info.Icon)
				};

				infoElement.Tapped += () => {
					NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
						NavigationController.PushViewController (new DetailViewController {
							info = new DataInfo {
								Key = info.Key,
								Name = info.Name,
								Value = info.Value,
								Icon = info.Icon,
								Caption = info.Caption
							}
						}, true);
					};
				};

				section.Insert (0, infoElement);
			}
		}

		/// <summary>
		/// Views the will appear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			var accountInfo = Path.Combine (FileSystemUtil.TmpFolder, "AccountInfo");
			if (!Directory.Exists (accountInfo)) {
				Directory.CreateDirectory (accountInfo);
			}

			NavigationItem.HidesBackButton = true;
			//导航栏右上角的新增按钮
			var addInfo = new UIBarButtonItem (UIImage.FromFile ("setting@2x.png"), UIBarButtonItemStyle.Plain, null);
			NavigationItem.SetRightBarButtonItem (addInfo, false);
			NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
				NavigationController.PushViewController (new DetailViewController {
					info = new DataInfo {
						Caption = "新增"
					}
				}, true);
			};

			if (!GlobalAppSetting.InForeground) {
				if (!UIDevice.CurrentDevice.CheckSystemVersion (10, 0)) {
					AlertUtil.Error ("当前系统低于iOS 10.0");
				} else {
					var context = new LAContext ();
					NSError AuthError;
					var myReason = new NSString ("通过Home键验证手机的Touch ID");
					if (context.CanEvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, out AuthError)) {
						var replyHandler = new LAContextReplyHandler ((success, error) => {
							InvokeOnMainThread (() => {
								if (success) {
									GlobalAppSetting.InForeground = true;
									_root.Add (new [] { section });
								} else {
									var alertAction = UIAlertController.Create ("Touch ID不可用", "", UIAlertControllerStyle.Alert);
									alertAction.AddAction (UIAlertAction.Create ("确认", UIAlertActionStyle.Default, alert => {
										GlobalAppSetting.InForeground = false;
										TerminateWithSuccess ();
									}));
									PresentViewController (alertAction, true, null);
								}
							});
						});
						context.EvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, myReason, replyHandler);
					}
				}
			}
		}

		/// <summary>
		/// Views the did load.
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			TableView.BackgroundView = null;
			TableView.BackgroundColor = UiStyleSetting.ViewControllerColor;
		}

		/// <summary>
		/// Views the will disappear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillDisappear (bool animated)
		{
			base.ViewDidDisappear (animated);
		}

		//退出程序
		static void TerminateWithSuccess ()
		{
			Selector selector = new Selector ("terminateWithSuccess");
			UIApplication.SharedApplication.PerformSelector (selector, UIApplication.SharedApplication, 0);
		}
	}
}