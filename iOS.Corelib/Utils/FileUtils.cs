using System;
using System.IO;
using iOS.Corelib.Utils;
using System.Collections.Generic;

namespace iOS.Corelib
{
	public static class FileUtils
	{
		/// <summary>
		/// Gets the file content from tmp.
		/// </summary>
		/// <returns>The file content.</returns>
		/// <param name="key">File identifier.</param>
		/// <param name="fileFolder">File Folder.</param>
		public static DataInfo GetFileContentFromTmp (string key, string fileFolder = "AccountInfo")
		{
			try {
				if (string.IsNullOrWhiteSpace (key))
					return null;

				var fileFullName = Path.Combine (FileSystemUtil.TmpFolder, fileFolder, key);
				if (!File.Exists (fileFullName))
					return null;

				using (StreamReader sr = new StreamReader (fileFullName)) {
					string info = sr.ReadToEnd ();
					string [] infos = info.Split ('-');
					if (infos.Length < 5)
						return null;
					return new DataInfo {
						Key = infos [0],
						Name = infos [1],
						Value = infos [2],
						Icon = infos [3],
						Caption = infos [4]
					};
				}
			} catch (Exception ex) {
				ErrorHandlerUtil.ReportException (ex);
				return null;
			}
		}

		/// <summary>
		/// Gets all file content from tmp.
		/// </summary>
		/// <returns>The all file content from tmp.</returns>
		/// <param name="fileFolder">File folder.</param>
		public static List<DataInfo> GetAllFileContentFromTmp (string fileFolder = "AccountInfo")
		{
			List<DataInfo> infoList = new List<DataInfo> ();

			string filePath = Path.Combine (FileSystemUtil.TmpFolder, fileFolder);
			if (!Directory.Exists (filePath))
				return new List<DataInfo> ();

			foreach (string file in Directory.GetFileSystemEntries (filePath)) {
				if (!File.Exists (file)) {
					continue;
				}
				using (StreamReader sr = new StreamReader (file)) {
					string info = sr.ReadToEnd ();
					string [] infos = info.Split ('-');
					if (infos.Length < 5)
						continue;
					infoList.Add (new DataInfo {
						Key = infos [0],
						Name = infos [1],
						Value = infos [2],
						Icon = infos [3],
						Caption = infos [4]
					});
				}
			}
			return infoList;
		}

		/// <summary>
		/// Saves the file content to tmp.
		/// </summary>
		/// <param name="key">File identifier.</param>
		/// <param name="fileContent">File content.</param>
		/// <param name="fileFolder">File Folder.</param>
		public static void SaveFileContentToTmp (string key, string fileContent, string fileFolder = "AccountInfo")
		{
			try {
				if (string.IsNullOrWhiteSpace (key) || string.IsNullOrEmpty (fileContent))
					return;

				var fileFullName = Path.Combine (FileSystemUtil.TmpFolder, fileFolder, key);
				using (StreamWriter sw = new StreamWriter (fileFullName, false)) {
					sw.Write (fileContent);
				}
			} catch (Exception ex) {
				ErrorHandlerUtil.ReportException (ex);
			}
		}

		/// <summary>
		/// Deletes the file.
		/// </summary>
		/// <param name="fileFolder">File folder.</param>
		public static void DeleteFile (string fileFolder = "AccountInfo", string key = null)
		{
			try {
				string filePath = Path.Combine (FileSystemUtil.TmpFolder, fileFolder);
				if (!string.IsNullOrWhiteSpace (key)) {
					if (File.Exists (Path.Combine (filePath, key)))
						File.Delete (Path.Combine (filePath, key));
				} else
					if (Directory.Exists (filePath)) {
					foreach (string file in Directory.GetFileSystemEntries (filePath)) {
						if (File.Exists (file)) {
							File.Delete (file);
						}
					}
				}
			} catch (Exception ex) {
				ErrorHandlerUtil.ReportException (ex);
			}
		}
	}

	public class DataInfo
	{
		public string Key { get; set; }
		public string Name { get; set; }
		public string Value { get; set; }
		public string Icon { get; set; }
		public string Caption { get; set; }
		// Key + "-" + Name + "-" + Value + "-" + Icon + "-" + Caption
	}
}
