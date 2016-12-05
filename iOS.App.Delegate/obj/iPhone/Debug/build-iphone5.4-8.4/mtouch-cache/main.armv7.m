#include "xamarin/xamarin.h"

extern void *mono_aot_module_iOSAppDelegate_info;
extern void *mono_aot_module_Xamarin_iOS_info;
extern void *mono_aot_module_mscorlib_info;
extern void *mono_aot_module_System_info;
extern void *mono_aot_module_System_Xml_info;
extern void *mono_aot_module_System_Core_info;
extern void *mono_aot_module_Mono_Dynamic_Interpreter_info;
extern void *mono_aot_module_iOS_Corelib_info;
extern void *mono_aot_module_SQLite_MT_info;
extern void *mono_aot_module_ZXing_Net_Mobile_info;
extern void *mono_aot_module_zxing_ios_info;
extern void *mono_aot_module_RestSharp_Portable_Core_info;
extern void *mono_aot_module_Newtonsoft_Json_info;
extern void *mono_aot_module_System_Xml_Linq_info;
extern void *mono_aot_module_System_Runtime_Serialization_info;
extern void *mono_aot_module_System_ServiceModel_Internals_info;
extern void *mono_aot_module_Microsoft_CSharp_info;
extern void *mono_aot_module_Mono_CSharp_info;
extern void *mono_aot_module_RestSharp_Portable_HttpClient_info;
extern void *mono_aot_module_System_Net_Http_info;
extern void *mono_aot_module_ICSharpCode_SharpZipLib_info;
extern void *mono_aot_module_MonoTouch_Dialog_1_info;
extern void *mono_aot_module_System_Json_info;
extern void *mono_aot_module_BaiduMapSDK_info;
extern void *mono_aot_module_ModernHttpClient_info;
extern void *mono_aot_module_iOS_App_info;

void xamarin_register_modules_impl ()
{
	mono_aot_register_module (mono_aot_module_iOSAppDelegate_info);
	mono_aot_register_module (mono_aot_module_Xamarin_iOS_info);
	mono_aot_register_module (mono_aot_module_mscorlib_info);
	mono_aot_register_module (mono_aot_module_System_info);
	mono_aot_register_module (mono_aot_module_System_Xml_info);
	mono_aot_register_module (mono_aot_module_System_Core_info);
	mono_aot_register_module (mono_aot_module_Mono_Dynamic_Interpreter_info);
	mono_aot_register_module (mono_aot_module_iOS_Corelib_info);
	mono_aot_register_module (mono_aot_module_SQLite_MT_info);
	mono_aot_register_module (mono_aot_module_ZXing_Net_Mobile_info);
	mono_aot_register_module (mono_aot_module_zxing_ios_info);
	mono_aot_register_module (mono_aot_module_RestSharp_Portable_Core_info);
	mono_aot_register_module (mono_aot_module_Newtonsoft_Json_info);
	mono_aot_register_module (mono_aot_module_System_Xml_Linq_info);
	mono_aot_register_module (mono_aot_module_System_Runtime_Serialization_info);
	mono_aot_register_module (mono_aot_module_System_ServiceModel_Internals_info);
	mono_aot_register_module (mono_aot_module_Microsoft_CSharp_info);
	mono_aot_register_module (mono_aot_module_Mono_CSharp_info);
	mono_aot_register_module (mono_aot_module_RestSharp_Portable_HttpClient_info);
	mono_aot_register_module (mono_aot_module_System_Net_Http_info);
	mono_aot_register_module (mono_aot_module_ICSharpCode_SharpZipLib_info);
	mono_aot_register_module (mono_aot_module_MonoTouch_Dialog_1_info);
	mono_aot_register_module (mono_aot_module_System_Json_info);
	mono_aot_register_module (mono_aot_module_BaiduMapSDK_info);
	mono_aot_register_module (mono_aot_module_ModernHttpClient_info);
	mono_aot_register_module (mono_aot_module_iOS_App_info);

}

void xamarin_register_assemblies_impl ()
{
	guint32 exception_gchandle = 0;
	xamarin_open_and_register ("Xamarin.iOS.dll", &exception_gchandle);
	xamarin_process_managed_exception_gchandle (exception_gchandle);
	xamarin_open_and_register ("iOS.Corelib.dll", &exception_gchandle);
	xamarin_process_managed_exception_gchandle (exception_gchandle);
	xamarin_open_and_register ("ZXing.Net.Mobile.dll", &exception_gchandle);
	xamarin_process_managed_exception_gchandle (exception_gchandle);
	xamarin_open_and_register ("BaiduMapSDK.dll", &exception_gchandle);
	xamarin_process_managed_exception_gchandle (exception_gchandle);
	xamarin_open_and_register ("iOS.App.dll", &exception_gchandle);
	xamarin_process_managed_exception_gchandle (exception_gchandle);

}

void xamarin_create_classes();
extern "C" { void mono_profiler_startup_log (); }
typedef void (*xamarin_profiler_symbol_def)();
extern xamarin_profiler_symbol_def xamarin_profiler_symbol;
xamarin_profiler_symbol_def xamarin_profiler_symbol = NULL;
void xamarin_setup_impl ()
{
	xamarin_profiler_symbol = mono_profiler_startup_log;
	xamarin_use_old_dynamic_registrar = FALSE;
	xamarin_create_classes();
	xamarin_gc_pump = FALSE;
	xamarin_init_mono_debug = TRUE;
	xamarin_compact_seq_points = FALSE;
	xamarin_executable_name = "iOSAppDelegate.exe";
	xamarin_use_new_assemblies = 1;
	mono_use_llvm = FALSE;
	xamarin_log_level = 2;
	xamarin_arch_name = "armv7";
	xamarin_marshal_managed_exception_mode = MarshalManagedExceptionModeDisable;
	xamarin_marshal_objectivec_exception_mode = MarshalObjectiveCExceptionModeDisable;
	xamarin_debug_mode = TRUE;
	setenv ("MONO_GC_PARAMS", "nursery-size=512k", 1);
}

int main (int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int rv = xamarin_main (argc, argv, false);
	[pool drain];
	return rv;
}
void xamarin_initialize_callbacks () __attribute__ ((constructor));
void xamarin_initialize_callbacks ()
{
	xamarin_setup = xamarin_setup_impl;
	xamarin_register_assemblies = xamarin_register_assemblies_impl;
	xamarin_register_modules = xamarin_register_modules_impl;
}
