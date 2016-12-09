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
using MonoTouch.Dialog;

namespace iOS.App.Views
{
	public class DetailViewController : BaseViewController
	{
		public DataInfo info;

		UIView border1, border2;
		UITextField captionTextField, nameTextField, valueTextField;

		/// <summary>
		/// Views the will appear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			Title = info.Caption;
			View.BackgroundColor = UIColor.White;

			var addInfo = new UIBarButtonItem (UIImage.FromFile ("alipay.png"), UIBarButtonItemStyle.Plain, null);
			NavigationItem.SetRightBarButtonItem (addInfo, false);
			NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
				//var key = DateTime.Now.ToString ("yyyyMMddHHmmss");
				//var content = key + "-" + a.Text + "-" + b.Text + "-" + c.Text + "-" + d.Text + "-" + DateTime.Now.ToString ("yyyy/MM/dd HH:mm:ss");
				//FileUtils.SaveFileContentToTmp (key, content);
			};
		}

		/// <summary>
		/// Views the did load.
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			captionTextField = new UITextField (new CGRect (0, 10, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.Red,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Center,
				Text = info.Caption ?? "",
				Placeholder = "Caption"
			};

			nameTextField = new UITextField (new CGRect (0, 100, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.Red,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Center,
				Text = info.Name ?? "",
				Placeholder = "Account"
			};
			border1 = new UIView (new CGRect (nameTextField.Frame.Left, nameTextField.Frame.Height, nameTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};

			valueTextField = new UITextField (new CGRect (0, 210, View.Frame.Width, 40)) {
				BackgroundColor = UIColor.Red,
				LeftViewMode = UITextFieldViewMode.Always,
				AdjustsFontSizeToFitWidth = true,
				Font = UIFont.SystemFontOfSize (UiStyleSetting.FontTitleSize),
				TextAlignment = UITextAlignment.Center,
				Text = info.Value ?? "",
				Placeholder = "Password"
			};
			border2 = new UIView (new CGRect (valueTextField.Frame.Left, valueTextField.Frame.Height, valueTextField.Frame.Width, 1F)) {
				BackgroundColor = UiStyleSetting.Color_weak_01
			};
			View.AddSubviews (captionTextField, nameTextField, border1, valueTextField, border2);
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
