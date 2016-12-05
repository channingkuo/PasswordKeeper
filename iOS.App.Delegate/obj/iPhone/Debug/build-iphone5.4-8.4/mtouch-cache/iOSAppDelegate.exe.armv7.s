.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 4.6.1 (tarball Fri Sep 23 15:20:44 EDT 2016)"
	.asciz "iOSAppDelegate.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14,12,13,0
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip RekTec_App_Std_Application__ctor
RekTec_App_Std_Application__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_iOSAppDelegate_got - . + 44
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,84,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,104,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip RekTec_App_Std_Application_Main_string__
RekTec_App_Std_Application_Main_string__:
.file 1 "/Users/Channing/Documents/ChanningKuo/PasswordKeeper/iOS.App.Delegate/Main.cs"
.loc 1 11 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,12,223,77,226,13,176,160,225,32,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_iOSAppDelegate_got - . + 48
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,15,160,227,8,0,139,229,0,224,155,229
	.byte 72,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229,100,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225
.loc 1 12 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
.loc 1 13 0

	.byte 0,224,155,229,148,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,32,0,155,229,40,0,139,229,0,15,160,227
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_iOSAppDelegate_got - . + 52
	.byte 0,0,159,231,44,0,139,229,0,224,155,229,200,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229
	.byte 44,32,155,229,0,31,160,227
bl _p_1
.loc 1 14 0

	.byte 0,224,155,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,155,229,0,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,32,0,0,234,12,0,139,229,8,0,139,229,0,224,155,229,32,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225
.loc 1 15 0

	.byte 0,224,155,229,52,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,155,229,40,0,139,229,0,224,155,229
	.byte 80,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229
bl _p_2
.loc 1 16 0

	.byte 0,224,155,229,108,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_3

	.byte 28,0,139,229,0,15,80,227,1,0,0,10,28,0,155,229
bl _p_4

	.byte 255,255,255,234
.loc 1 17 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,164,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,155,229
	.byte 184,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,223,139,226,0,9,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip iOS_App_Delegate_AppDelegate__ctor
iOS_App_Delegate_AppDelegate__ctor:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_iOSAppDelegate_got - . + 56
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229
bl _p_5

	.byte 0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,108,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl RekTec_App_Std_Application__ctor
bl RekTec_App_Std_Application_Main_string__
bl iOS_App_Delegate_AppDelegate__ctor
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.byte 41,12,13,0,68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,64,68,13,11,3,176,1,10,68,13,13,14
	.byte 16,68,8,8,8,11,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10
	.byte 68,14,12,68,8,8,14,8,68,11

.text
	.align 4
plt:
mono_aot_iOSAppDelegate_plt:
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_iOSAppDelegate_got - . + 72,253
	.no_dead_strip plt_iOS_Corelib_Utils_LoggingUtil_Exception_System_Exception
plt_iOS_Corelib_Utils_LoggingUtil_Exception_System_Exception:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_iOSAppDelegate_got - . + 76,258
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_iOSAppDelegate_got - . + 80,263
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_iOSAppDelegate_got - . + 84,302
	.no_dead_strip plt_iOS_App_AppDelegate__ctor
plt_iOS_App_AppDelegate__ctor:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_iOSAppDelegate_got - . + 88,330
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_iOSAppDelegate_got, 96
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "03C45824-3F65-4C18-ABDE-E25CAF09CBA0"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "iOSAppDelegate"
.data
	.align 3
_mono_aot_file_info:

	.long 137,0
	.align 2
	.long mono_aot_iOSAppDelegate_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 18,96,6,4,70,387000831,0,790
	.long 128,4,4,10,0,14,1536,736
	.long 328,184,0,272,304,232,0,176
	.long 32,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 19,240,133,127,157,50,48,83,173,81,22,56,56,195,5,38
	.globl _mono_aot_module_iOSAppDelegate_info
	.align 2
_mono_aot_module_iOSAppDelegate_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_0:

	.byte 5
	.asciz "RekTec_App_Std_Application"

	.byte 8,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "RekTec_App_Std_Application"

LDIFF_SYM7=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM9
	.byte 2
	.asciz "RekTec.App.Std.Application:.ctor"
	.asciz "RekTec_App_Std_Application__ctor"

	.byte 0,0
	.long RekTec_App_Std_Application__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 2
	.long RekTec_App_Std_Application__ctor

LDIFF_SYM12=Lme_0 - RekTec_App_Std_Application__ctor
	.long LDIFF_SYM12
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 8,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM13=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_5:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM16=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM17=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_4:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM20=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM21=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM22=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_7:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM25=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_10:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM28=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM29=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM30=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM30
LTDIE_11:

	.byte 5
	.asciz "_KeyCollection"

	.byte 12,16
LDIFF_SYM31=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM32=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,8,0,7
	.asciz "_KeyCollection"

LDIFF_SYM33=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM34=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM35=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_12:

	.byte 5
	.asciz "_ValueCollection"

	.byte 12,16
LDIFF_SYM36=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM37=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,8,0,7
	.asciz "_ValueCollection"

LDIFF_SYM38=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM38
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM39=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM39
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM40=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_9:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM41=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM42=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,8,6
	.asciz "entries"

LDIFF_SYM43=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,12,6
	.asciz "count"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,32,6
	.asciz "version"

LDIFF_SYM45=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,36,6
	.asciz "freeList"

LDIFF_SYM46=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,40,6
	.asciz "freeCount"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM48=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,16,6
	.asciz "keys"

LDIFF_SYM49=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,20,6
	.asciz "values"

LDIFF_SYM50=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM51=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM52=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM52
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM53=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM54=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_13:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 8,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM55=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM56=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM57=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM57
LTDIE_15:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 8,16
LDIFF_SYM58=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM59=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM60=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM61=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_14:

	.byte 5
	.asciz "System_Type"

	.byte 12,16
LDIFF_SYM62=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM63=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,8,0,7
	.asciz "System_Type"

LDIFF_SYM64=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM65=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM66=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_16:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM67=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM68=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM69=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM69
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM70=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM70
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM71=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM71
LTDIE_8:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 48,16
LDIFF_SYM72=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM73=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,8,6
	.asciz "m_data"

LDIFF_SYM74=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,12,6
	.asciz "m_types"

LDIFF_SYM75=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,16,6
	.asciz "m_nameToIndex"

LDIFF_SYM76=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,20,6
	.asciz "m_currMember"

LDIFF_SYM77=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,40,6
	.asciz "m_converter"

LDIFF_SYM78=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,24,6
	.asciz "m_fullTypeName"

LDIFF_SYM79=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,28,6
	.asciz "m_assemName"

LDIFF_SYM80=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,32,6
	.asciz "objectType"

LDIFF_SYM81=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,36,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM82=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,44,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM83=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,45,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM84=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,46,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM85=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM86=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM87=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_18:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 12,16
LDIFF_SYM88=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM89=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM90=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM91=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_23:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 8,16
LDIFF_SYM92=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM93=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM94=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM94
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM95=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_22:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 8,16
LDIFF_SYM96=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM97=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM98=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM99=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_21:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 8,16
LDIFF_SYM100=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM101=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM102=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM103=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_20:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 20,16
LDIFF_SYM104=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM105=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,8,6
	.asciz "name"

LDIFF_SYM106=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,12,6
	.asciz "reftype"

LDIFF_SYM107=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,16,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM108=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM109=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM110=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_19:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 16,16
LDIFF_SYM111=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM112=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,8,6
	.asciz "default_ctor"

LDIFF_SYM113=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,12,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM114=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM115=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM116=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_17:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 24,16
LDIFF_SYM117=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM118=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,12,6
	.asciz "GenericCache"

LDIFF_SYM119=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,16,6
	.asciz "m_serializationCtor"

LDIFF_SYM120=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,20,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM121=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM122=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM122
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM123=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM123
LTDIE_27:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 8,16
LDIFF_SYM124=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM125=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM125
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM126=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM127=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_28:

	.byte 5
	.asciz "System_DelegateData"

	.byte 20,16
LDIFF_SYM128=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM129=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,8,6
	.asciz "method_name"

LDIFF_SYM130=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,12,6
	.asciz "curried_first_arg"

LDIFF_SYM131=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,16,0,7
	.asciz "System_DelegateData"

LDIFF_SYM132=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM133=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM134=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_26:

	.byte 5
	.asciz "System_Delegate"

	.byte 52,16
LDIFF_SYM135=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM136=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,8,6
	.asciz "invoke_impl"

LDIFF_SYM137=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,12,6
	.asciz "m_target"

LDIFF_SYM138=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,16,6
	.asciz "method"

LDIFF_SYM139=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,20,6
	.asciz "delegate_trampoline"

LDIFF_SYM140=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,24,6
	.asciz "extra_arg"

LDIFF_SYM141=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,28,6
	.asciz "method_code"

LDIFF_SYM142=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,32,6
	.asciz "method_info"

LDIFF_SYM143=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,36,6
	.asciz "original_method_info"

LDIFF_SYM144=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,40,6
	.asciz "data"

LDIFF_SYM145=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,44,6
	.asciz "method_is_virtual"

LDIFF_SYM146=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,48,0,7
	.asciz "System_Delegate"

LDIFF_SYM147=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM148=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM149=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM149
LTDIE_25:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 56,16
LDIFF_SYM150=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM151=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,35,52,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM152=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM153=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM154=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM154
LTDIE_24:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 56,16
LDIFF_SYM155=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM156=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM157=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM158=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM158
LTDIE_6:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 28,16
LDIFF_SYM159=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM160=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,8,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM161=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,12,6
	.asciz "m_realObject"

LDIFF_SYM162=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,16,6
	.asciz "m_realType"

LDIFF_SYM163=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,20,6
	.asciz "SerializeObjectState"

LDIFF_SYM164=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM165=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM166=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM167=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM167
LTDIE_2:

	.byte 5
	.asciz "System_Exception"

	.byte 68,16
LDIFF_SYM168=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM169=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,8,6
	.asciz "_message"

LDIFF_SYM170=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,12,6
	.asciz "_data"

LDIFF_SYM171=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,16,6
	.asciz "_innerException"

LDIFF_SYM172=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,20,6
	.asciz "_helpURL"

LDIFF_SYM173=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,24,6
	.asciz "_stackTrace"

LDIFF_SYM174=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,28,6
	.asciz "_stackTraceString"

LDIFF_SYM175=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,32,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM176=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,36,6
	.asciz "_remoteStackIndex"

LDIFF_SYM177=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,40,6
	.asciz "_dynamicMethods"

LDIFF_SYM178=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,44,6
	.asciz "_HResult"

LDIFF_SYM179=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,48,6
	.asciz "_source"

LDIFF_SYM180=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,52,6
	.asciz "_safeSerializationManager"

LDIFF_SYM181=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,56,6
	.asciz "captured_traces"

LDIFF_SYM182=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,60,6
	.asciz "native_trace_ips"

LDIFF_SYM183=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,35,64,0,7
	.asciz "System_Exception"

LDIFF_SYM184=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM185=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM185
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM186=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2
	.asciz "RekTec.App.Std.Application:Main"
	.asciz "RekTec_App_Std_Application_Main_string__"

	.byte 1,11
	.long RekTec_App_Std_Application_Main_string__
	.long Lme_1

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM187=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,123,32,11
	.asciz "ex"

LDIFF_SYM188=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM189=Lfde1_end - Lfde1_start
	.long LDIFF_SYM189
Lfde1_start:

	.long 0
	.align 2
	.long RekTec_App_Std_Application_Main_string__

LDIFF_SYM190=Lme_1 - RekTec_App_Std_Application_Main_string__
	.long LDIFF_SYM190
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,64,68,13,11,3,176,1,10,68,13,13,14,16,68,8,8
	.byte 8,11,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_33:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM191=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM192=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM192
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM193=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM193
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM194=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_32:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 20,16
LDIFF_SYM195=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM196=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM197=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM198=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,16,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM199=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM199
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM200=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM201=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_31:

	.byte 5
	.asciz "UIKit_UIApplicationDelegate"

	.byte 20,16
LDIFF_SYM202=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2,35,0,0,7
	.asciz "UIKit_UIApplicationDelegate"

LDIFF_SYM203=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM204=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM205=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_36:

	.byte 5
	.asciz "UIKit_UIResponder"

	.byte 20,16
LDIFF_SYM206=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM206
	.byte 2,35,0,0,7
	.asciz "UIKit_UIResponder"

LDIFF_SYM207=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_35:

	.byte 5
	.asciz "UIKit_UIView"

	.byte 24,16
LDIFF_SYM210=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,0,6
	.asciz "__mt_PreferredFocusedView_var"

LDIFF_SYM211=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,20,0,7
	.asciz "UIKit_UIView"

LDIFF_SYM212=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM213=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM213
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM214=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM214
LTDIE_34:

	.byte 5
	.asciz "UIKit_UIWindow"

	.byte 24,16
LDIFF_SYM215=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM215
	.byte 2,35,0,0,7
	.asciz "UIKit_UIWindow"

LDIFF_SYM216=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM217=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM218=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM218
LTDIE_30:

	.byte 5
	.asciz "iOS_App_AppDelegate"

	.byte 24,16
LDIFF_SYM219=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,0,6
	.asciz "_window"

LDIFF_SYM220=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,20,0,7
	.asciz "iOS_App_AppDelegate"

LDIFF_SYM221=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM222=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM223=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM223
LTDIE_29:

	.byte 5
	.asciz "iOS_App_Delegate_AppDelegate"

	.byte 24,16
LDIFF_SYM224=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,0,0,7
	.asciz "iOS_App_Delegate_AppDelegate"

LDIFF_SYM225=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM225
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM226=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM226
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM227=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2
	.asciz "iOS.App.Delegate.AppDelegate:.ctor"
	.asciz "iOS_App_Delegate_AppDelegate__ctor"

	.byte 0,0
	.long iOS_App_Delegate_AppDelegate__ctor
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM228=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM229=Lfde2_end - Lfde2_start
	.long LDIFF_SYM229
Lfde2_start:

	.long 0
	.align 2
	.long iOS_App_Delegate_AppDelegate__ctor

LDIFF_SYM230=Lme_2 - iOS_App_Delegate_AppDelegate__ctor
	.long LDIFF_SYM230
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
