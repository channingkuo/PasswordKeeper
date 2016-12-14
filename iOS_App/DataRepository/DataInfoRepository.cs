#region 文件头部
/**********
Copyright @ Channing Kuo All rights reserved. 
****************
作者 : Channing Kuo
日期 : 2016-12-14
说明 : 本地数据库存储实现类
****************/
#endregion

using System;
using System.Collections.Generic;
using System.Linq;
using iOS.Corelib.DataRepository;
using SQLite;
using System.Security.Policy;

namespace iOS.App.DataRepository
{
	/// <summary>
	/// 本地数据库存储实现类
	/// </summary>
	public static class DataInfoRepository
	{
		static DataInfoRepository ()
		{
			SqlDataRepository.CreateTable<DataInfo> ();
		}

		/// <summary>
		/// 存数据到本地数据库
		/// </summary>
		public static void SyncInsertInfo (List<DataInfo> infos)
		{
			if (!SqlDataRepository.IsOpened || infos == null || infos.Count == 0)
				return;

			try {
				SqlDataRepository.BeginTransaction ();

				foreach (DataInfo info in infos) {
					var existsImg = SqlDataRepository.Table<DataInfo> ()
						.AsQueryable ()
						.FirstOrDefault (m => m.Key == info.Key);

					if (existsImg == null) {
						SqlDataRepository.Insert (info);
					} else {
						SqlDataRepository.Update (info);
					}
				}

				SqlDataRepository.Commit ();
			} catch (Exception) {
				SqlDataRepository.Rollback ();
				throw;
			}
		}

		/// <summary>
		/// Deletes the infos.
		/// </summary>
		public static void DeleteInfo ()
		{
			var infos = SqlDataRepository.Table<DataInfo> ().ToList ();
			foreach (var info in infos) {
				var existsInfo = SqlDataRepository.Table<DataInfo> ()
					.AsQueryable ()
					.FirstOrDefault (m => m.Key == info.Key);

				if (existsInfo != null) {
					SqlDataRepository.Delete (info);
				}
			}
		}

		/// <summary>
		/// Deletes the info by key.
		/// </summary>
		/// <param name="key">Key.</param>
		public static void DeleteInfoByKey (string key)
		{
			var info = GetDataInfoByKey (key);
			if (info != null) {
				SqlDataRepository.Delete (info);
			}
		}

		/// <summary>
		/// Insert or update info
		/// </summary>
		public static void AddOrUpdate (DataInfo info)
		{
			if (!SqlDataRepository.IsOpened || info == null)
				return;

			var existsInfo = SqlDataRepository.Table<DataInfo> ()
					.AsQueryable ()
					.FirstOrDefault (m => m.Key == info.Key);

			if (existsInfo == null) {
				SqlDataRepository.Insert (info);
			} else {
				SqlDataRepository.Update (info);
			}

			SqlDataRepository.Commit ();
		}

		/// <summary>
		/// Get infos
		/// </summary>
		public static List<DataInfo> GetDataInfo ()
		{
			if (!SqlDataRepository.IsOpened)
				return new List<DataInfo> (0);

			return SqlDataRepository.Table<DataInfo> ().ToList ();
		}

		/// <summary>
		/// Gets the data info by key.
		/// </summary>
		/// <returns>The data info by key.</returns>
		/// <param name="key">Key.</param>
		public static DataInfo GetDataInfoByKey (string key)
		{
			if (!SqlDataRepository.IsOpened)
				return null;

			return SqlDataRepository.Table<DataInfo> ().AsQueryable ().FirstOrDefault (m => m.Key == key);
		}
	}

	public class DataInfo
	{
		/// <summary>
		/// 主键ID
		/// </summary>
		/// <value>The key.</value>
		[PrimaryKey]
		public string Key { get; set; }

		/// <summary>
		/// 账号
		/// </summary>
		/// <value>The name.</value>
		public string Name { get; set; }

		/// <summary>
		/// 密码
		/// </summary>
		/// <value>The value.</value>
		public string Value { get; set; }

		/// <summary>
		/// 图标名称
		/// </summary>
		/// <value>The icon.</value>
		public string Icon { get; set; }

		/// <summary>
		/// 标题
		/// </summary>
		/// <value>The caption.</value>
		public string Caption { get; set; }

		/// <summary>
		/// 修改时间
		/// </summary>
		/// <value>The last edit time.</value>
		public DateTime LastEditTime { get; set; }
	}
}

