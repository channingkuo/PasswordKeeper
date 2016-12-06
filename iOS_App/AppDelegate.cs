using Foundation;
using iOS.App.App.Views;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using LocalAuthentication;
using UIKit;

namespace iOS.App
{
	public class AppDelegate : UIApplicationDelegate
	{
		private UIWindow _window;

		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
			FileSystemUtil.Disabled_iCloudBackup ();

			//if (string.IsNullOrEmpty (GlobalAppSetting.XrmWebApiBaseUrl)) {
			//	GlobalAppSetting.XrmWebApiBaseUrl = "http://220.178.49.211:8000/";
			//}

			_window = new UIWindow (UIScreen.MainScreen.Bounds);

			var nav = new XrmNavigationController (new LoginViewController ());
			AlertUtil.Initialize (nav);
			UiStyleSetting.Initialize (app, nav);
			_window.RootViewController = nav;
			_window.MakeKeyAndVisible ();
			return true;
		}

		public override void ReceivedRemoteNotification (UIApplication application, NSDictionary userInfo)
		{
		}

		public override void RegisteredForRemoteNotifications (UIApplication application, NSData deviceToken)
		{
		}

		public override void WillEnterForeground (UIApplication application)
		{
		}

		public override void DidEnterBackground (UIApplication application)
		{
			GlobalAppSetting.IsInBackground = true;
		}
	}
}

