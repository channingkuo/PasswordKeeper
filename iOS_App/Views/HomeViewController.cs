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
using LocalAuthentication;
using ObjCRuntime;
using UIKit;

namespace iOS.App.Views
{
	/// <summary>
	/// 主页
	/// </summary>
	public class HomeViewController : BaseViewController
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
			var addInfo = new UIBarButtonItem (UIImage.FromFile ("alipay.png"), UIBarButtonItemStyle.Plain, null);
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
													 View.Frame.Height - UiStyleSetting.StatusBarHeight - UiStyleSetting.NavigationBarHeight));

			tableView.SeparatorStyle = UITableViewCellSeparatorStyle.None;

			UILabel bgText = new UILabel (new CGRect (0, View.Frame.Height / 2, View.Frame.Width, 20)); ;
			bgText.Text = "还没有记录，赶紧去添加吧...";
			bgText.TextAlignment = UITextAlignment.Center;
			bgText.TextColor = UIColor.FromRGB (136, 136, 136);
			tableView.BackgroundView = bgText;

			Add (tableView);
		}

		public void UpdateUiInterface ()
		{
			InvokeOnMainThread (() => {
				tableView.ReloadData ();
			});
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
