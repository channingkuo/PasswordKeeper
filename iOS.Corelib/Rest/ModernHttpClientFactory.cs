#region 类文件描述
/**********
Copyright @ 苏州瑞泰信息技术有限公司 All rights reserved. 
****************
创建人   : Joe Song
创建时间 : 2015-04-16 
说明     : 
****************/
#endregion
using System.Net.Http;
using ModernHttpClient;
using RestSharp.Portable;
using RestSharp.Portable.HttpClient.Impl;
using RestSharp.Portable.HttpClient.Impl.Http;

namespace iOS.Corelib.Rest
{
    /// <summary>
    /// 封装ModernHttpClient，给RestSharp使用，提高iOS上http请求的性能
    /// </summary>
    public class ModernHttpClientFactory : DefaultHttpClientFactory
    {
        #region Methods

        /// <summary>
        /// Create the message handler.
        /// </summary>
        /// <param name="client">The REST client that wants to create the HTTP client</param>
        /// <param name="request">The REST request for which the HTTP client is created</param>
        /// <returns>
        /// A new HttpMessageHandler object
        /// </returns>
        protected override HttpMessageHandler CreateMessageHandler(IRestClient client, IRestRequest request)
        {
            var proxy = GetProxy(client);
            var cookies = GetCookies(client, request);
            var credentials = client.Credentials;
            var httpClientHandler = new NativeMessageHandler();

            if (httpClientHandler.SupportsProxy && proxy != null)
            {
                httpClientHandler.UseProxy = true;
                httpClientHandler.Proxy = new RequestProxyWrapper(proxy);
            }

            if (cookies != null)
            {
                httpClientHandler.UseCookies = true;
                httpClientHandler.CookieContainer = cookies;
            }

            if (credentials != null)
            {
                httpClientHandler.Credentials = credentials;
            }

            return httpClientHandler;
        }

        #endregion
    }
}
