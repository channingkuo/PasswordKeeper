#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-08
说明 : UITableViewSource
****************/
#endregion
using Foundation;
using iOS.Corelib;
using System;
using System.Collections.Generic;
using UIKit;
using CoreGraphics;

namespace iOS.App.Views
{
	public class TableViewSource : UITableViewSource
	{
		private List<DataInfo> infos;
		private HomeViewController vc;

		public TableViewSource (HomeViewController vc)
		{
			infos = FileUtils.GetAllFileContentFromTmp ();
			if (infos.Count > 0)
				vc.tableView.BackgroundView = null;
			this.vc = vc;
		}

		public override nint NumberOfSections (UITableView tableView)
		{
			return (nint)1;
		}

		public override nfloat GetHeightForRow (UITableView tableView, NSIndexPath indexPath)
		{
			return (nfloat)65;
		}

		public override nint RowsInSection (UITableView tableView, nint section)
		{
			return infos == null ? 0 : infos.Count;
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			if (infos == null)
				return null;
			if (infos.Count <= indexPath.Row)
				return null;

			var info = infos [indexPath.Row];
			var cellIdentifier = info.Key;
			HomeTableViewCell cell = tableView.DequeueReusableCell (cellIdentifier) as HomeTableViewCell;
			if (cell == null)
				cell = new HomeTableViewCell ((NSString)cellIdentifier);
			cell.UpdateCell (info);
			return cell;
		}

		public override bool CanEditRow (UITableView tableView, NSIndexPath indexPath)
		{
			if (infos == null)
				return false;
			if (infos.Count <= indexPath.Row)
				return false;
			return true;
		}

		public override void CommitEditingStyle (UITableView tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath indexPath)
		{
			if (editingStyle != UITableViewCellEditingStyle.Delete)
				return;

			if (infos == null)
				return;

			if (infos.Count <= indexPath.Row)
				return;

			var info = infos [indexPath.Row];
			FileUtils.DeleteFile (key: info.Key);
			infos.RemoveAll ((obj) => obj.Key == info.Key);
			//if (infos.Count == 0)
			//	vc.tableView.Add (new UILabel (new CGRect (0, vc.View.Frame.Height / 2, vc.View.Frame.Width, 20)) {
			//		Text = "还没有记录，赶紧去添加吧...",
			//		TextAlignment = UITextAlignment.Center,
			//		TextColor = UIColor.FromRGB (136, 136, 136)
			//	});
			vc.tableView.ReloadData ();
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			if (infos == null)
				return;

			if (infos.Count <= indexPath.Row)
				return;

			var info = infos [indexPath.Row];
			vc.NavigationController.PushViewController (new DetailViewController {
				key = info.Key,
				title = info.Caption
			}, true);
			tableView.DeselectRow (indexPath, true);
		}
	}
}