using Foundation;
using iOS.App.Views;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using System.Threading;
using UIKit;

namespace iOS.App
{
    public class AppDelegate : UIApplicationDelegate
	{
		private UIWindow _window;

		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
            Thread.Sleep(1000);
            
			FileSystemUtil.Disabled_iCloudBackup ();
            
			_window = new UIWindow (UIScreen.MainScreen.Bounds);

			var nav = new XrmNavigationController (new MainViewController(new MonoTouch.Dialog.RootElement("CodeKeeper")));
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

