#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-08
说明 : 新增编辑页
****************/
#endregion
using iOS.Corelib.Views;
using iOS.Corelib;
using UIKit;
using CoreGraphics;
using System;
using iOS.Corelib.Configuration;
using System.Diagnostics;
using iOS.Corelib.Utils;
using Foundation;
using ObjCRuntime;

namespace iOS.App.Views
{
	public class DetailViewController : BaseViewController
	{
		private DataInfo info;
		public string title;
		public string key;

		UIView border, border1, border2;
		UITextField captionTextField, nameTextField, valueTextField;

		UIAlertView emptyCheckAlert, succeedAlert;

		public override IUIPreviewActionItem [] PreviewActionItems => PreviewAtions;

		private static IUIPreviewActionItem [] PreviewAtions {
			get {
				var duplicate = PreviewActionForTitle ("Copy to clipboard");
				return new IUIPreviewActionItem [] { duplicate };
			}
		}

		static UIPreviewAction PreviewActionForTitle (string title, UIPreviewActionStyle style = UIPreviewActionStyle.Default)
		{
			return UIPreviewAction.Create (title, style, (action, previewViewController) => {
				var detailViewController = (DetailViewController)previewViewController;
				var info = detailViewController?.info;
				UIPasteboard.General.String = info.Value;
				//var view = detailViewController?.View;
				//var alert = detailViewController?.succeedAlert;
				//alert = new UIAlertView ();
				//alert.Title = "Password has copied to pasteboard";
				//alert.Show ();
				//view.PerformSelector (new Selector ("DismissAlert"), alert, 2.0);
			});
		}


		/// <summary>
		/// Views the will appear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			if (!string.IsNullOrWhiteSpace (title))
				Title = title;

			View.BackgroundColor = UIColor.White;
			View.AddGestureRecognizer (new TapGestureRecognizer (this, new Selector ("ViewTap")));

			var addInfo = new UIBarButtonItem (UIImage.FromFile ("save.png"), UIBarButtonItemStyle.Plain, null);
			NavigationItem.SetRightBarButtonItem (addInfo, false);
			NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
				string errorMsg = string.Empty;
				if (string.IsNullOrWhiteSpace (captionTextField.Text))
					errorMsg += "Caption, ";
				if (string.IsNullOrWhiteSpace (nameTextField.Text))
					errorMsg += "Account, ";
				if (string.IsNullOrWhiteSpace (valueTextField.Text))
					errorMsg += "Password, ";
				if (!string.IsNullOrWhiteSpace (errorMsg)) {
					errorMsg = errorMsg.Substring (0, errorMsg.Length - 2);
					errorMsg += " can't be empty!";
					emptyCheckAlert = new UIAlertView ();
					emptyCheckAlert.Title = "Warning";
					emptyCheckAlert.Message = errorMsg;
					emptyCheckAlert.Show ();
					emptyCheckAlert.PerformSelector (new Selector ("DismissAlert"), emptyCheckAlert, 2.0);
					return;
				}

				var identity = info == null ? DateTime.Now.ToString ("yyyyMMddHHmmss") : info.Key;
				var content = identity + "=" + nameTextField.Text + "=" + valueTextField.Text + "=default_icon.png" + "=" + captionTextField.Text + "=" + DateTime.Now.ToString ("yyyy-MM-dd HH:mm:ss");
				FileUtils.SaveFileContentToTmp (identity, content);
				NavigationController.PopViewController (true);
			};
		}

		/// <summary>
		/// 提示框自动消失
		/// </summary>
		[Export ("DismissAlert")]
		void DismissAlert ()
		{
			if (emptyCheckAlert != null) {
				emptyCheckAlert.DismissWithClickedButtonIndex (emptyCheckAlert.CancelButtonIndex, true);
			}
			//if (succeedAlert != null) {
			//	succeedAlert.DismissWithClickedButtonIndex (succeedAlert.CancelButtonIndex, true);
			//}
		}

		/// <summary>
		/// Views the did load.
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			info = FileUtils.GetFileContentFromTmp (key);
			if (info != null) {
				Title = info.Caption;
			}

			captionTextField = new UITextField (new CGRect (0, 10, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.White,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Left,
				Text = info == null ? "" : info.Caption,
				Placeholder = "Caption",
				LeftView = new UILabel (new CGRect (0, 0, View.Frame.Width / 4, 40)) {
					Text = "Caption",
					TextColor = UIColor.Gray,
					TextAlignment = UITextAlignment.Center
				}
			};
			border = new UIView (new CGRect (0, 10 + 40, captionTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};

			nameTextField = new UITextField (new CGRect (0, 60, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.White,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Left,
				Text = info == null ? "" : info.Name,
				Placeholder = "Account",
				LeftView = new UILabel (new CGRect (0, 0, View.Frame.Width / 4, 40)) {
					Text = "Account",
					TextColor = UIColor.Gray,
					TextAlignment = UITextAlignment.Center
				}
			};
			border1 = new UIView (new CGRect (0, 60 + 40, nameTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};

			valueTextField = new UITextField (new CGRect (0, 110, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.White,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Left,
				Text = info == null ? "" : info.Value,
				Placeholder = "Password",
				SecureTextEntry = true,
				LeftView = new UILabel (new CGRect (0, 0, View.Frame.Width / 4, 40)) {
					Text = "Password",
					TextColor = UIColor.Gray,
					TextAlignment = UITextAlignment.Center
				},
				RightViewMode = UITextFieldViewMode.Always
			};
			var rightView = new UIButton (new CGRect (View.Frame.Width - 40, 0, 32, 40));
			rightView.SetImage (UIImage.FromFile ("eye_close.png"), UIControlState.Normal);
			rightView.TouchUpInside += (sender, e) => {
				UIImage image = valueTextField.SecureTextEntry ? UIImage.FromFile ("eye_open.png") : UIImage.FromFile ("eye_close.png");
				rightView.SetImage (image, UIControlState.Normal);
				valueTextField.SecureTextEntry = !valueTextField.SecureTextEntry;
			};
			valueTextField.RightView = rightView;
			border2 = new UIView (new CGRect (0, 110 + 40, valueTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};
			View.AddSubviews (captionTextField, border, nameTextField, border1, valueTextField, border2);
		}

		/// <summary>
		/// 收起键盘
		/// </summary>
		[Export ("ViewTap")]
		void ViewTap ()
		{
			UIApplication.SharedApplication.KeyWindow.EndEditing (true);
		}

		class TapGestureRecognizer : UITapGestureRecognizer
		{
			public TapGestureRecognizer (NSObject target, Selector action) : base (target, action)
			{
				ShouldReceiveTouch += (sender, touch) => {
					return true;
				};
			}
		}

		/// <summary>
		/// Views the will disappear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillDisappear (bool animated)
		{
			base.ViewDidDisappear (animated);
		}
	}
}
