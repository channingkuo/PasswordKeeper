#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-08
说明 : 主页
****************/
#endregion
using CoreGraphics;
using iOS.Corelib.Configuration;
using iOS.Corelib.Views;
using UIKit;

namespace iOS.App.Views
{
    /// <summary>
    /// 主页
    /// </summary>
    public class HomeViewController : BaseViewController
    {
        private UITableView tableView;

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Title = "CodeKeeper";
            NavigationItem.HidesBackButton = true;

            tableView.Source = new TableViewSource(this);
            tableView.ReloadData();
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            tableView = new UITableView(new CGRect(View.Bounds.X, View.Bounds.Y,
                View.Frame.Width, View.Frame.Height - UiStyleSetting.StatusBarHeight - UiStyleSetting.NavigationBarHeight - UiStyleSetting.TabBarHeight));

            tableView.SeparatorStyle = UITableViewCellSeparatorStyle.None;

            UILabel bgText = new UILabel(new CGRect(0, View.Frame.Height / 2, View.Frame.Width, 20)); ;
            bgText.Text = "还没有记录，赶紧去添加吧...";
            bgText.TextAlignment = UITextAlignment.Center;
            bgText.TextColor = UIColor.FromRGB(136, 136, 136);
            tableView.BackgroundView = bgText;

            Add(tableView);
        }

        //private void ChatListChangeCallback(ChatListViewModel c)
        //{
        //    InvokeOnMainThread(() => {
        //        tableView.ReloadData();
        //    });
        //}

        public void UpdateUiInterface()
        {
            InvokeOnMainThread(() =>
            {
                tableView.ReloadData();
            });
        }

        public override void ViewWillDisappear(bool animated)
        {
            base.ViewWillDisappear(animated);
        }
    }
}
