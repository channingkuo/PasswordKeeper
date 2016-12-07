using UIKit;

namespace iOS.App
{
	public partial class XrmNavigationController : UINavigationController
	{
		public XrmNavigationController (UIViewController vc) : base (vc)
		{
		}

		public override bool ShouldAutorotate ()
		{
			if (VisibleViewController is UIAlertController || VisibleViewController == null) {
				return base.ShouldAutorotate ();
			}
			return VisibleViewController.ShouldAutorotate ();
		}

		public override UIInterfaceOrientationMask GetSupportedInterfaceOrientations ()
		{
			if (VisibleViewController is UIAlertController || VisibleViewController == null) {
				return base.GetSupportedInterfaceOrientations ();
			}
			return VisibleViewController.GetSupportedInterfaceOrientations ();
		}

		public override UIInterfaceOrientation PreferredInterfaceOrientationForPresentation ()
		{
			if (VisibleViewController is UIAlertController || VisibleViewController == null) {
				return base.PreferredInterfaceOrientationForPresentation ();
			}
			return VisibleViewController.PreferredInterfaceOrientationForPresentation ();
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void DidReceiveMemoryWarning ()
		{
			base.DidReceiveMemoryWarning ();
			// Release any cached data, images, etc that aren't in use.
		}
	}
}


