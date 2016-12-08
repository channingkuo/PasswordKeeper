#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Joe Song
创建时间 : 2015-04-16 
说明     : App级别的Ui样式设置代码
****************/
#endregion
using System;
using CoreGraphics;
using UIKit;
using CoreLocation;

namespace iOS.Corelib.Configuration
{
	/// <summary>
	/// App级别的Ui样式设置代码
	/// </summary>
	public static class UiStyleSetting
	{
		public static readonly float TabBarHeight = 49;

		public static readonly float NavigationBarHeight = 44;
		public static readonly float SearchBarHeight = 44;
		public static readonly float ToolBarHeight = 49;

		public static readonly float NormalButtonHeight = 40;
		public static readonly float NormalButtonWidth = 80;

		public static readonly float PaddingSizeSmall = 5;
		public static readonly float PaddingSizeMedium = 10;
		public static readonly float PaddingSizeLarge = 20;

		public static readonly float HeadIconSizeSmall = 40;
		public static readonly float HeadIconSizeMedium = 45;

		public static readonly float FontTitleSize = 16F;
		public static readonly float FontDetailSize = 14F;


		public static readonly float HeightTableViewRowDefault = 45F;
		public static readonly float HeightTableViewHeaderDefault = 30F;

		public static readonly CGSize SizeTableViewIconDefault = new CGSize (20, 20);

		public static readonly float HeightTextBox = 60F;
		public static readonly float HeightButton = 40F;
		public static readonly float CornerRadiusSize = 5F;
		public static readonly float BorderSize = 0.5F;
		//TableView的行的默认高度

		public static nfloat ScreenWidth;
		public static nfloat ScreenHeight;

		public static readonly UIColor ButtonTextBlue = UIColor.FromRGB (206, 26, 27);//UIColor.FromRGBA ((nfloat)0F, (nfloat)0.478431F, (nfloat)1.0F, (nfloat)1.0F);
		public static readonly UIColor ButtonBackgroundColor = UIColor.FromRGB (255, 26, 27);//UIColor.FromRGB (69, 190, 228);
		public static readonly UIColor ViewControllerColor = UIColor.FromRGB (239, 239, 244);
		public static readonly UIColor ToolBarColor = UIColor.FromRGB (248, 248, 248);
		public static readonly UIColor NavigationBarColor = UIColor.FromRGB (249, 249, 249);
		public static readonly UIColor RektecBlueColor = UIColor.FromRGB (0, 153, 255);
		//public static readonly UIColor RektecBlueColor = UIColor.White;
		public static readonly UIColor RekTecBlueColorHighlighted = UIColor.FromRGB (0, 119, 221);
		//public static readonly UIColor RekTecBlueColorHighlighted = UIColor.FromRGB(248, 248, 248);

		public static readonly UIColor Color_main_01 = UIColor.FromRGB (0, 153, 255);
		public static readonly UIColor Color_normal_01 = UIColor.FromRGB (85, 85, 85);

		public static readonly UIColor Color_weak_01 = UIColor.FromRGB (240, 240, 240);
		public static readonly UIColor Color_weak_03 = UIColor.FromRGB (248, 248, 248);

		public static readonly nfloat Font_size_normal_01 = 14F;

		private static readonly CLLocationManager _locationManager = new CLLocationManager ();

		public static void Initialize (UIApplication app, UINavigationController nav)
		{
			ScreenWidth = UIScreen.MainScreen.Bounds.Width;
			ScreenHeight = UIScreen.MainScreen.Bounds.Height;

			if (IsIos7OrLater) {
				UINavigationBar.Appearance.BarTintColor = UIColor.White;//UIColor.FromRGB (206, 26, 27);
				UINavigationBar.Appearance.TintColor = UIColor.Gray;//RektecBlueColor;
				nav.NavigationBar.Translucent = false;
			} else {
				UINavigationBar.Appearance.TintColor = UIColor.White;//RektecBlueColor;
			}
			UINavigationBar.Appearance.SetTitleTextAttributes (new UITextAttributes () {
				TextColor = UIColor.FromRGB (206, 26, 27),//RektecBlueColor,
				TextShadowColor = UIColor.FromRGB (206, 26, 27)//RektecBlueColor
			});

			nav.NavigationBar.BarStyle = UIBarStyle.Default;
			app.SetStatusBarStyle (UIStatusBarStyle.Default, false);


		}

		public static void RequestAlwaysAuthorizationOfLocationManager ()
		{
			if (UiStyleSetting.IsIos8OrLater) {
				_locationManager.RequestAlwaysAuthorization ();
			}
		}

		public static bool IsIos7OrLater {
			get {
				return UIDevice.CurrentDevice.CheckSystemVersion (7, 0);
			}
		}

		public static bool IsIos8OrLater {
			get {
				return UIDevice.CurrentDevice.CheckSystemVersion (8, 0);
			}
		}

		public static float StatusBarHeight {
			get {
				if (IsIos7OrLater)
					return 20F;
				else
					return 0F;
			}
		}

		public static UIStatusBarStyle BarStyle = UIStatusBarStyle.LightContent;
	}
}
