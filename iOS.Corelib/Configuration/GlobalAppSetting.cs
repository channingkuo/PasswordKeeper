#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Joe Song
创建时间 : 2015-04-16 
说明     : App级别的全局设置类
****************/
#endregion
using Foundation;

namespace iOS.Corelib.Configuration
{
	/// <summary>
	/// App级别的全局设置类
	/// </summary>
	public static class GlobalAppSetting
	{
		private static NSUserDefaults _defaults;

		/// <summary>
		/// 设置Key/Value格式的配置项目
		/// </summary>
		/// <param name="key">Key</param>
		/// <param name="value">Value</param>
		public static void SetValue (string key, string value)
		{
			if (_defaults == null)
				_defaults = NSUserDefaults.StandardUserDefaults;

			_defaults.SetString (value, key);
		}

		/// <summary>
		/// 根据Key获取设置项目的值
		/// </summary>
		/// <param name="key">Key</param>
		/// <returns>Value</returns>
		public static string GetValue (string key)
		{
			if (_defaults == null)
				_defaults = NSUserDefaults.StandardUserDefaults;

			return _defaults.StringForKey (key);
		}

		/// <summary>
		/// 是否是第一次打开应用，如果是，则需要设定服务器的地址
		/// </summary>
		/// <value><c>true</c> if is first open; otherwise, <c>false</c>.</value>
		public static string IsFirstOpen {
			get {
				var v = GetValue ("IsFirstOpen");
				return v;
			}
			set {
				SetValue ("IsFirstOpen", value);
			}
		}

		/// <summary>
		/// 是否进入后台模式
		/// </summary>
		/// <value><c>true</c> if is first open; otherwise, <c>false</c>.</value>
		public static bool InForeground {
			get {
				var v = GetValue ("InForeground");
				return string.IsNullOrWhiteSpace (v) ? false : bool.Parse (v);
			}
			set {
				SetValue ("InForeground", value.ToString ());
			}
		}

		/// <summary>
		/// 网络类型
		/// </summary>
		/// <value>The is first open.</value>
		public static string NetWorkType {
			get {
				var v = GetValue ("NetWorkType");
				return v;
			}
			set {
				SetValue ("NetWorkType", value);
			}
		}


		/// <summary>
		/// App的版本号，通过这个来控制本地数据库的版本，此版本号发生变化，则会导致创建一个新的数据库文件
		/// </summary>
		public static string LocalDbVersion {
			get {
				return "161205";
			}
		}

		/// <summary>
		/// 本地存储的用户上次登录的账号
		/// </summary>
		public static string UserCode {
			get {
				return GetValue ("chat_UserCode");
			}
			set {
				SetValue ("chat_UserCode", value);
			}
		}

		/// <summary>
		/// 本地存储的用户上次登陆的密码
		/// </summary>
		public static string Password {
			get {
				return GetValue ("chat_Password");
			}
			set {
				SetValue ("chat_Password", value);
			}
		}

		/// <summary>
		/// 本地存储的用户用于消息推送的Token
		/// </summary>
		public static string DeviceToken {
			get {
				return GetValue ("chat_DeviceToken");
			}
			set {
				SetValue ("chat_DeviceToken", value);
			}
		}

		/// <summary>
		/// 用于访问Xrm的WebAPI的身份验证的Token
		/// </summary>
		public static string XrmAuthToken {
			get {
				return GetValue ("chat_XrmAuthToken");
			}
			set {
				SetValue ("chat_XrmAuthToken", value);
			}
		}

		/// <summary>
		/// 访问Xrm的WebAPI的基础Url地址
		/// </summary>
		public static string XrmWebApiBaseUrl {
			get {
				return GetValue ("chat_XrmWebApiBaseUrl");
			}
			set {
				SetValue ("chat_XrmWebApiBaseUrl", value);
			}
		}

		/// <summary>
		/// 是否启用消息通知
		/// </summary>
		public static bool IsNotified {
			get {
				var v = GetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotified");
				if (string.IsNullOrWhiteSpace (v))
					return true;

				return GetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotified") == "1";
			}
			set {
				SetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotified", value ? "1" : "0");
			}
		}

		/// <summary>
		/// 收到消息是否有声音提醒
		/// </summary>
		public static bool IsNotifiedVoice {
			get {
				var v = GetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotifiedVoice");
				if (string.IsNullOrWhiteSpace (v))
					return true;

				return GetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotifiedVoice") == "1";
			}
			set {
				SetValue ("chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotifiedVoice", value ? "1" : "0");
			}
		}

		private static string IsNotifiedBeepKey {
			get {
				return "chat" + "_" + LocalDbVersion + "_" + UserCode + "_IsNotifiedBeep";
			}
		}

		/// <summary>
		/// 收到消息是否有震动
		/// </summary>
		public static bool IsNotifiedBeep {
			get {
				var v = GetValue (IsNotifiedBeepKey);
				if (string.IsNullOrWhiteSpace (v))
					return true;

				return GetValue (IsNotifiedBeepKey) == "1";
			}
			set {
				SetValue (IsNotifiedBeepKey, value ? "1" : "0");
			}
		}

		/// <summary>
		/// 菜单的样式，1代表列表，2 代表9宫格；默认是列表样式
		/// </summary>
		/// <value>The menu last update time.</value>
		public static string MenuStyle {
			get {
				var style = GetValue ("menu" + "_" + UserCode + "_MenuStyle");
				if (string.IsNullOrWhiteSpace (style)) {
					style = "1";
				}
				return style;
			}
			set {
				SetValue ("menu" + "_" + UserCode + "_MenuStyle", value);
			}
		}

		/// <summary>
		/// 当前用户id
		/// </summary>
		/// <value>The menu last update time.</value>
		public static string UserId {
			get {
				return GetValue ("chat_UserId");
			}
			set {
				SetValue ("chat_UserId", value);
			}
		}

		/// <summary>
		/// Openfire聊天服务器的HostName
		/// </summary>
		public static string HostName {
			set {
				SetValue ("chat_HostName", value);
			}
			get {
				var v = GetValue ("chat_HostName");
				return string.IsNullOrWhiteSpace (v) ? "joe-nb-t430" : v;
			}
		}

		/// <summary>
		/// HTML5代码的版本号
		/// </summary>
		public static string WwwVersion {
			set {
				SetValue ("WwwVersion", value);
			}
			get {
				var v = GetValue ("WwwVersion");
				return string.IsNullOrWhiteSpace (v) ? "1.0.0.0" : v;
			}
		}

		/// <summary>
		/// 是否启用Debug模式，如果启用，则HTML5页面从服务器端获取
		/// </summary>
		public static bool IsHTML5Debug {
			set {
				SetValue ("IsHTML5Debug", value.ToString ());
			}
			get {
				var v = GetValue ("IsHTML5Debug");
				return string.IsNullOrWhiteSpace (v) ? false : bool.Parse (v);
			}
		}

		/// <summary>
		/// 是否注销
		/// </summary>
		/// <value>Is log out.</value>
		public static bool IsLogOut {
			get {
				var v = GetValue ("IsLogOut");
				return string.IsNullOrWhiteSpace (v) ? false : bool.Parse (v);
			}
			set {
				SetValue ("IsLogOut", value.ToString ());
			}
		}



		/// <summary>
		/// 是否已记住密码
		/// </summary>
		public static bool IsRememberPassword {
			set {
				SetValue ("IsRememberPassword", value.ToString ());
			}
			get {
				var v = GetValue ("IsRememberPassword");
				return string.IsNullOrWhiteSpace (v) ? false : bool.Parse (v);
			}
		}
	}
}

