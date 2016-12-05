#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Channing Kuo
创建时间 : 2016-11-23
说明     : 消息提示框的工具类
****************/
#endregion
using System;
using System.Diagnostics;
using BaiduMapSDK;
using iOS.Corelib.Utils;

namespace iOS.Corelib.Services
{
    public class LocationServiceDelegate : BMKLocationServiceDelegate
	{
		public Action<Location> GetLocationCallBack;

		/// <summary>
		/// 处理定位失败
		/// </summary>
		/// <returns>The fail to locate user with error.</returns>
		/// <param name="error">Error.</param>
		public override void DidFailToLocateUserWithError (Foundation.NSError error)
		{
			AlertUtil.Error (error.LocalizedFailureReason);
		}

		/// <summary>
		/// 定位位置更新后调用
		/// </summary>
		/// <returns>The update BMKUser location.</returns>
		/// <param name="userLocation">User location.</param>
		public override void DidUpdateBMKUserLocation (BMKUserLocation userLocation)
		{
			Debug.WriteLine ("lat:" + userLocation.Location.Coordinate.Latitude + "|long:" + userLocation.Location.Coordinate.Longitude);
			Debug.WriteLine ("Title:" + userLocation.Subtitle);
			if (GetLocationCallBack != null)
				GetLocationCallBack (new Location {
					latitude = userLocation.Location.Coordinate.Latitude,
					longitude = userLocation.Location.Coordinate.Longitude
				});
		}

		/// <summary>
		/// 定位方向改变后调用
		/// </summary>
		/// <returns>The update user heading.</returns>
		/// <param name="userLocation">User location.</param>
		public override void DidUpdateUserHeading (BMKUserLocation userLocation)
		{

		}

		public class Location
		{
			public double latitude;
			public double longitude;
		}
	}
}

