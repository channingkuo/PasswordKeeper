#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者: Channing Guo
日期 : 2016-12-07
说明 : 主页
****************/
#endregion
using MonoTouch.Dialog;
using UIKit;
using iOS.Corelib.Configuration;

namespace iOS.App.Views
{
    /// <summary>
    /// 主页
    /// </summary>
    public class MainViewController : DialogViewController
    {
        RootElement _root;
        //private UIViewBuilder _builder;

        public MainViewController(RootElement r) : base(UITableViewStyle.Grouped, r, true)
        {
            _root = r;
            View.BackgroundColor = UiStyleSetting.Color_weak_03;

            _root.Clear();

        }

        /// <summary>
        /// 页面将要出现时		
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

            NavigationItem.HidesBackButton = true;
        }

        /// <summary>
        /// 页面加载时		
        /// </summary>
        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            //_builder = new UIViewBuilder(View);
            //_builder.SetTableViewStyle(TableView);
        }

        /// <summary>
        /// 页面将要消失的时
        /// </summary>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public override void ViewWillDisappear(bool animated)
        {
            base.ViewDidDisappear(animated);
        }
    }
}