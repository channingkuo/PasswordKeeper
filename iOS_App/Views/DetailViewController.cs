using System;
using iOS.Corelib.Views;
using iOS.Corelib;

namespace iOS.App.Views
{
	public class DetailViewController : BaseViewController
	{
		public DataInfo info;

		/// <summary>
		/// Views the will appear.
		/// </summary>
		/// <param name="animated">If set to <c>true</c> animated.</param>
		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);

			Title = info.Caption;
		}

		/// <summary>
		/// Views the did load.
		/// </summary>
		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();
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
