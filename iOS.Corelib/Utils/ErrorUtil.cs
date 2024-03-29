#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Joe Song
创建时间 : 2015-04-16 
说明     : 统一的系统错误处理类
****************/
#endregion
using System;
using System.Collections.Generic;

namespace iOS.Corelib.Utils
{
    /// <summary>
    /// 统一的系统错误处理类
    /// </summary>
    public static class ErrorHandlerUtil
	{
		private static readonly List<Func<string, bool>> ErrorHandlers = new List<Func<string, bool>> ();

		/// <summary>
		/// 订阅错误信息
		/// </summary>
		/// <param name="func"></param>
		public static void Subscribe (Func<string, bool> func)
		{
			ErrorHandlers.Add (func);
		}

		/// <summary>
		/// 取消订阅错误信息
		/// </summary>
		/// <param name="func"></param>
		public static void UnSubscribe (Func<string, bool> func)
		{
			ErrorHandlers.Remove (func);
		}

		/// <summary>
		/// Report Error
		/// </summary>
		/// <param name="errorMessage">错误消息</param>
		public static void ReportError (string errorMessage)
		{
			LoggingUtil.Error (errorMessage);
			try {
				ErrorHandlers.ForEach (handler => {
					handler (errorMessage);
				});
			} catch (Exception ex) {
				LoggingUtil.Exception (ex);
			}
		}

		/// <summary>
		/// Report Exception
		/// </summary>
		/// <param name="ex">异常类</param>
		public static void ReportException (Exception ex)
		{
			//LoggingUtil.Exception (ex);
			var exMessage = ex.Message;
			//try {
			//	var nsex = new NSException (ex.Message, ex.StackTrace, null);
			//	Bugly.ReportException (nsex);
			//} catch {

			//}
			if (ex is SQLite.SQLiteException || exMessage.Contains ("Value cannot be null")) {
				return;
			}

			if (ex is System.IO.IOException || ex is System.Net.WebException || ex is Newtonsoft.Json.JsonException) {
				//如果网络连接正常就不提示错误了
				if (NetworkUtil.CheckNetworkIsReachable ())
					return;
				exMessage = "[网络]连接异常，请检查网络设置或者重试！";
			}
			try {
				ErrorHandlers.ForEach (handler => {
					handler (exMessage);
				});
			} catch {
			}
		}
	}
}

