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

namespace iOS.App.Views
{
	public class DetailViewController : BaseViewController
	{
		private DataInfo info;
		public string title;
		public string key;

		UIView border, border1, border2;
		UITextField captionTextField, nameTextField, valueTextField;

		/// <summary>
		/// Views the will appear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			Title = title ?? "新建";

			View.BackgroundColor = UIColor.White;

			var addInfo = new UIBarButtonItem (UIImage.FromFile ("alipay.png"), UIBarButtonItemStyle.Plain, null);
			NavigationItem.SetRightBarButtonItem (addInfo, false);
			NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
				var identity = DateTime.Now.ToString ("yyyyMMddHHmmssss");
				var content = identity + "=" + nameTextField.Text + "=" + valueTextField.Text + "=qq.png" + "=" + captionTextField.Text + "=" + DateTime.Now.ToString ("yyyy-MM-dd HH:mm:ss");
				FileUtils.SaveFileContentToTmp (identity, content);
				NavigationController.PopViewController (true);
			};
		}

		/// <summary>
		/// Views the did load.
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			info = FileUtils.GetFileContentFromTmp (key);

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
				}
			};
			border2 = new UIView (new CGRect (0, 110 + 40, valueTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};
			View.AddSubviews (captionTextField, border, nameTextField, border1, valueTextField, border2);
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
