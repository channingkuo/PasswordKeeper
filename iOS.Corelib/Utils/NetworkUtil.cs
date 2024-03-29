#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Joe Song
创建时间 : 2015-04-16 
说明     : 网络相关的工具类
****************/
#endregion
using iOS.Corelib.Configuration;
using System.Diagnostics;

namespace iOS.Corelib.Utils
{
    /// <summary>
    /// 网络相关的工具类
    /// </summary>
    public static class NetworkUtil
	{
		private static Reachability _networkReachability;
		private static object _networkReachabilityLocker = new object ();

		/// <summary>
		/// 根据IP地址检查网络是否联通
		/// </summary>
		/// <param name="ip">IP地址</param>
		public static void CheckNetworkReachable ()
		{
			lock (_networkReachabilityLocker) {
				if (_networkReachability == null) {
					_networkReachability = new Reachability ("www.baidu.com");
					_networkReachability.ReachabilityUpdated += (sender, e) => {
						var netTypeString = _networkReachability.GetReachabilityString ();
						var netType = _networkReachability.GetNetworkType ();
						GlobalAppSetting.NetWorkType = netType;
						Debug.WriteLine ("当前网络连接类型：[" + netTypeString + "]");
					};
				}
			}
		}

		/// <summary>
		/// 根据IP地址检查网络是否联通
		/// </summary>
		public static bool CheckNetworkIsReachable ()
		{
			_networkReachability = new Reachability ("www.baidu.com");
			var networkType = _networkReachability.GetNetworkType ();
			if (networkType == "NotReachable")
				return false;
			return true;
		}
	}
}

