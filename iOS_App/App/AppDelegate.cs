using Foundation;
using iOS.App.Views;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using UIKit;

namespace iOS.App
{
	public class AppDelegate : UIApplicationDelegate
	{
		private UIWindow _window;

		public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
		{
			FileSystemUtil.Disabled_iCloudBackup ();

			GlobalAppSetting.InForeground = false;

			_window = new UIWindow (UIScreen.MainScreen.Bounds);
			var nav = new XrmNavigationController (new HomeViewController ());
			AlertUtil.Initialize (nav);
			UiStyleSetting.Initialize (application, nav);

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
			GlobalAppSetting.InForeground = false;
		}

		public override void DidEnterBackground (UIApplication application)
		{
			GlobalAppSetting.InForeground = false;
		}
	}
}

