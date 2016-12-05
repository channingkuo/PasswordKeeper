#region ���ļ�����
/**********
Copyright @ ������̩��Ϣ�������޹�˾ All rights reserved. 
****************
������   : Joe Song
����ʱ�� : 2015-04-16 
˵��     : ����ɨ�����ذ�����
****************/
#endregion
using System;
using ZXing.Mobile;

namespace iOS.Corelib.Utils
{
    /// <summary>
    /// ����ɨ�����ذ�����
    /// </summary>
    public static class BarcodeUtil
    {
        private static MobileBarcodeScanner _scannner;

        public static void Scan(Action<string> success)
        {
            if (_scannner == null)
            {
                _scannner = new MobileBarcodeScanner {FlashButtonText = "�����", CancelButtonText = "ȡ��"};
            }
            _scannner.Scan()
                .ContinueWith(t =>
                {
                    if (t.IsFaulted)
                    {
                        ErrorHandlerUtil.ReportException(t.Exception);
                        return;
                    }
                    
                    if (success != null)
                    {
                        success(t.Result.Text);
                    }
                });
        }
    }
}