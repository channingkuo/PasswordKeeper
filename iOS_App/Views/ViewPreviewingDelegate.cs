#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-09
说明 : 3D Touch Delegate
****************/
#endregion
using CoreGraphics;
using UIKit;

namespace iOS.App.Views
{
	public class ViewPreviewingDelegate : UIViewControllerPreviewingDelegate
	{
		public HomeViewController DVController { get; set; }

		public ViewPreviewingDelegate (HomeViewController DVController)
		{
			this.DVController = DVController;
		}

		/// <summary>
		/// Peek
		/// </summary>
		/// <returns>The view controller for preview.</returns>
		/// <param name="previewingContext">Previewing context.</param>
		/// <param name="location">Location.</param>
		public override UIViewController GetViewControllerForPreview (IUIViewControllerPreviewing previewingContext, CoreGraphics.CGPoint location)
		{
			// 判断表格中的条目
			var indexPath = DVController.tableView.IndexPathForRowAtPoint (location);
			var cell = DVController.tableView.CellAt (indexPath);
			//var item = DVController.dataSource.Objects [indexPath.Row];

			// 创建ViewController，并设置初始位置
			var detailViewController = DVController.Storyboard.InstantiateViewController ("DetailViewController") as DetailViewController;
			detailViewController.PreferredContentSize = new CGSize (0, 0);

			// 填入数据
			//detailViewController.SetDetailItem (item);
			detailViewController.NavigationItem.LeftBarButtonItem = DVController.SplitViewController.DisplayModeButtonItem;
			detailViewController.NavigationItem.LeftItemsSupplementBackButton = true;

			// 设置预览页面的位置，模糊其他页面
			previewingContext.SourceRect = cell.Frame;

			return detailViewController;
		}

		/// <summary>
		/// Pop
		/// </summary>
		/// <param name="previewingContext">Previewing context.</param>
		/// <param name="viewControllerToCommit">View controller to commit.</param>
		public override void CommitViewController (IUIViewControllerPreviewing previewingContext, UIViewController viewControllerToCommit)
		{
			DVController.ShowViewController (viewControllerToCommit, this);
		}
	}
}
