#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-09
说明 : 中转页面
****************/
#endregion
using Foundation;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using iOS.Corelib.Views;
using LocalAuthentication;
using UIKit;
using iOS.App.Views;
using CoreGraphics;

namespace iOS.App
{
	public class TransitViewController : BaseViewController
	{
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
			NavigationController.NavigationBarHidden = true;

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
									NavigationController.PushViewController (new HomeViewController (), true);
								}
							});
						});
						context.EvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, myReason, replyHandler);
					}
				}
			}
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			View.BackgroundColor = UIColor.White.ColorWithAlpha (0.71f);
		}

		public override void ViewWillDisappear (bool animated)
		{
			base.ViewWillDisappear (animated);
		}
	}
}
