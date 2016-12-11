#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-08
说明 : 主页
****************/
#endregion
using System.IO;
using CoreGraphics;
using Foundation;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using iOS.Corelib.Views;
using ObjCRuntime;
using UIKit;

namespace iOS.App.Views
{
	/// <summary>
	/// 主页
	/// </summary>
	public class HomeViewController : BaseViewController, IUIViewControllerPreviewingDelegate
	{
		public UITableView tableView;

		public override void ViewWillAppear (bool animated)
		{
			base.ViewWillAppear (animated);
			Title = "CodeKeeper";
			NavigationController.NavigationBarHidden = false;
			NavigationItem.HidesBackButton = true;

			var accountInfo = Path.Combine (FileSystemUtil.TmpFolder, "AccountInfo");
			if (!Directory.Exists (accountInfo)) {
				Directory.CreateDirectory (accountInfo);
			}

			//导航栏右上角的新增按钮
			var addInfo = new UIBarButtonItem (UIImage.FromFile ("add.png"), UIBarButtonItemStyle.Plain, null);
			NavigationItem.SetRightBarButtonItem (addInfo, false);
			NavigationItem.RightBarButtonItem.Clicked += (sender, e) => {
				NavigationController.PushViewController (new DetailViewController {
					key = "",
					title = "新建"
				}, true);
			};

			tableView.Source = new TableViewSource (this);
			tableView.ReloadData ();
		}

		public override void ViewDidLoad ()
		{
			base.ViewDidLoad ();

			tableView = new UITableView (new CGRect (View.Bounds.X,
				View.Bounds.Y,
				View.Frame.Width,
				View.Frame.Height - UiStyleSetting.StatusBarHeight - UiStyleSetting.NavigationBarHeight)) {
				SeparatorStyle = UITableViewCellSeparatorStyle.None
			};


			UILabel bgText = new UILabel (new CGRect (0, View.Frame.Height / 2, View.Frame.Width, 20)); ;
			bgText.Text = "还没有记录，赶紧去添加吧...";
			bgText.TextAlignment = UITextAlignment.Center;
			bgText.TextColor = UIColor.FromRGB (136, 136, 136);
			tableView.BackgroundView = bgText;

			Add (tableView);
		}

		public override void TraitCollectionDidChange (UITraitCollection previousTraitCollection)
		{
			base.TraitCollectionDidChange (previousTraitCollection);
			// 判断设备是否支持3D Touch
			if (TraitCollection.ForceTouchCapability == UIForceTouchCapability.Available) {
				// 注册Pop和Peek
				RegisterForPreviewingWithDelegate (this, View);
			}
		}

		/// <summary>
		/// Peek
		/// </summary>
		/// <returns>The view controller for preview.</returns>
		/// <param name="previewingContext">Previewing context.</param>
		/// <param name="location">Location.</param>
		public UIViewController GetViewControllerForPreview (IUIViewControllerPreviewing previewingContext, CGPoint location)
		{
			var indexPath = tableView.IndexPathForRowAtPoint (location);

			if (indexPath == null)
				return null;

			var cell = tableView.CellAt (indexPath);

			if (cell == null)
				return null;

			// Create a detail view controller and set its properties.
			var detailViewController = new DetailViewController {
				key = cell.ReuseIdentifier,
				PreferredContentSize = new CGSize (0, 0)
			};
			previewingContext.SourceRect = cell.Frame;
			return detailViewController;
		}

		/// <summary>
		/// Pop
		/// </summary>
		/// <param name="previewingContext">Previewing context.</param>
		/// <param name="viewControllerToCommit">View controller to commit.</param>
		public void CommitViewController (IUIViewControllerPreviewing previewingContext, UIViewController viewControllerToCommit)
		{
			ShowViewController (viewControllerToCommit, this);
		}

		public void UpdateUiInterface ()
		{
			InvokeOnMainThread (() => {
				tableView.ReloadData ();
			});
		}
	}
}
