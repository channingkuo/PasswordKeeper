#region 文件头部
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
作者 : Channing Guo
日期 : 2016-08-03
说明 : 获取当前设备类型
****************/
#endregion
using System;
using System.Diagnostics;
using System.Runtime.InteropServices;
using ObjCRuntime;

namespace iOS.Corelib.Views
{
	public class DeviceHardware
	{
		[DllImport (Constants.SystemLibrary)]
		internal static extern int sysctlbyname (
												 	[MarshalAs (UnmanagedType.LPStr)] string property,      // name of the propert
													IntPtr output,                                          // outpu
													IntPtr oldLen,                                          // IntPtr.Zero
													IntPtr newp,                                            // IntPtr.Zero
													uint newlen                                             // 0
												);

		private static string hardwareStr = "";
		public DeviceHardware ()
		{
			var pLen = Marshal.AllocHGlobal (sizeof (int));
			sysctlbyname ("hw.machine", IntPtr.Zero, pLen, IntPtr.Zero, 0);
			var length = Marshal.ReadInt32 (pLen);
			if (length == 0) {
				Marshal.FreeHGlobal (pLen);
				Debug.WriteLine ("没有获取到当前设备的型号!");
			}
			var pStr = Marshal.AllocHGlobal (length);
			sysctlbyname ("hw.machine", pStr, pLen, IntPtr.Zero, 0);
			hardwareStr = Marshal.PtrToStringAnsi (pStr);
			Debug.WriteLine (hardwareStr);
		}

		public string GetDeviceType ()
		{
			if (string.IsNullOrWhiteSpace (hardwareStr))
				return new DeviceModel ().ToString ();
			return ChangeDeviceStrToDeviceType (hardwareStr);
		}

		public DeviceModel GetDeviceType (string flag)
		{
			if (string.IsNullOrWhiteSpace (hardwareStr))
				return new DeviceModel ();
			var deviceModel = new DeviceModel ();
			if (hardwareStr.Contains ("iPad"))
				deviceModel.deviceType = "pad";
			if (hardwareStr.Contains ("iPod"))
				deviceModel.deviceType = "pod";
			if (hardwareStr.Contains ("iPhone"))
				deviceModel.deviceType = "mobile";
			return deviceModel;
		}

		private string ChangeDeviceStrToDeviceType (string deviceStr)
		{
			var deviceModel = new DeviceModel ();
			if (deviceStr.Contains ("iPad"))
				deviceModel.deviceType = "pad";
			if (deviceStr.Contains ("iPod"))
				deviceModel.deviceType = "pod";
			if (deviceStr.Contains ("iPhone"))
				deviceModel.deviceType = "mobile";
			return deviceModel.ToString ();
		}

		public class DeviceModel
		{
			public string osType { get; set; }
			public string deviceType { get; set; }

			public DeviceModel ()
			{
				osType = "iOS";
				deviceType = "";
			}

			public override string ToString ()
			{
				return "{\"osType\":\"" + osType + "\",\"deviceType\":\"" + deviceType + "\"}";
			}
		}
	}
}

