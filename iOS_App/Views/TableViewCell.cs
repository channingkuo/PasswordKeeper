#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者:  Channing Guo
日期 : 2016-12-08
说明 : UITableViewCell
****************/
#endregion
using System;
using CoreGraphics;
using Foundation;
using UIKit;
using iOS.Corelib.Configuration;
using iOS.Corelib.Utils;
using iOS.Corelib;

namespace iOS.App.Views
{
    /// <summary>
    /// Home列表的Cell
    /// </summary>
    public class HomeTableViewCell : UITableViewCell
    {
        UILabel caption, account, lastEditTime;
        UIImageView iconView;
        UIView border;

        public HomeTableViewCell(NSString cellId) : base(UITableViewCellStyle.Default, cellId)
        {
            SelectionStyle = UITableViewCellSelectionStyle.Default;
            iconView = new UIImageView();
            caption = new UILabel()
            {
                Font = UIFont.BoldSystemFontOfSize((nfloat)UiStyleSetting.FontTitleSize),
                TextColor = UIColor.Black,
                TextAlignment = UITextAlignment.Left,
                BackgroundColor = UIColor.Clear
            };
            account = new UILabel()
            {
                Font = UIFont.SystemFontOfSize((nfloat)UiStyleSetting.FontDetailSize),
                TextColor = UIColor.Gray,
                TextAlignment = UITextAlignment.Left,
                BackgroundColor = UIColor.Clear
            };
            lastEditTime = new UILabel()
            {
                Font = UIFont.SystemFontOfSize((nfloat)UiStyleSetting.FontDetailSize),
                TextColor = UIColor.Gray,
                TextAlignment = UITextAlignment.Right,
                BackgroundColor = UIColor.Clear
            };
            border = new UIView();
            border.BackgroundColor = UiStyleSetting.ViewControllerColor;
            ContentView.AddSubviews(
                new UIView[] {
                    iconView, caption, account, lastEditTime, border
                });
        }

        public void UpdateCell(DataInfo info)
        {
            iconView.Image = string.IsNullOrWhiteSpace(info.Icon) ? null : UIImage.FromFile(info.Icon);
            caption.Text = info.Caption;
            account.Text = info.Name;
            lastEditTime.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm");
        }

        public override void LayoutSubviews()
        {
            base.LayoutSubviews();
            iconView.Frame = new CGRect(15, 14.5, 36, 36);
            caption.Frame = new CGRect(61, 
                UiStyleSetting.PaddingSizeMedium, 
                ContentView.Bounds.Width - (UiStyleSetting.HeadIconSizeMedium + UiStyleSetting.PaddingSizeMedium * 2) - 100, 
                26
            );
            account.Frame = new CGRect(61,
                UiStyleSetting.PaddingSizeMedium + UiStyleSetting.FontTitleSize + UiStyleSetting.PaddingSizeMedium - 4,
                ContentView.Bounds.Width - (UiStyleSetting.HeadIconSizeMedium + UiStyleSetting.PaddingSizeMedium * 2),
                24
            );
            lastEditTime.Frame = new CGRect(ContentView.Bounds.Width - 90, 10, 80, 26);

            border.Frame = new CGRect(UiStyleSetting.PaddingSizeMedium, this.Frame.Height - 1, this.Frame.Width, 1);
        }
    }
}

