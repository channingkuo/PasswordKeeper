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
using ObjCRuntime;
using UIKit;
using System.Threading.Tasks;
using iOS.Corelib.DataRepository;

namespace iOS.App.Views
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
									//UIView.BeginAnimations ("ViewInView");
									//UIView.SetAnimationDuration (4.0);
									//UIView.SetAnimationTransition (UIViewAnimationTransition.CurlUp, NavigationController.View, true);
									//UIView.CommitAnimations ();
								}
							});
						});
						context.EvaluatePolicy (LAPolicy.DeviceOwnerAuthenticationWithBiometrics, myReason, replyHandler);
					}
				}
			}
		}

		public override async void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			View.BackgroundColor = UIColor.White.ColorWithAlpha (0.71f);

			await Task.Run (() => { SqlDataRepository.Initialize ("Channing Kuo"); });
		}

		public override void ViewWillDisappear (bool animated)
		{
			base.ViewWillDisappear (animated);
		}

		//退出程序
		static void TerminateWithSuccess ()
		{
			Selector selector = new Selector ("terminateWithSuccess");
			UIApplication.SharedApplication.PerformSelector (selector, UIApplication.SharedApplication, 0);
		}
	}
}
