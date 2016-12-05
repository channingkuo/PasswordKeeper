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
	.byte 8,1
	.asciz "Mono AOT Compiler 4.6.1 (tarball Fri Sep 23 15:20:28 EDT 2016)"
	.asciz "iOSAppDelegate.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
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

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
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

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip RekTec_App_Std_Application__ctor
RekTec_App_Std_Application__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #112]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip RekTec_App_Std_Application_Main_string__
RekTec_App_Std_Application_Main_string__:
.file 1 "/Users/Channing/Documents/ChanningKuo/PasswordKeeper/iOS.App.Delegate/Main.cs"
.loc 1 11 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #120]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9001bbf
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 1 12 0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 1 13 0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90033a0
.word 0xd2800000

adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x0, [x16, #128]
.word 0xf90037a0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf94037a2
.word 0xd2800001
bl _p_1
.loc 1 14 0
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001f
.word 0xf9001fa0
.word 0xf9401fa0
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.loc 1 15 0
.word 0xf9400fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf90033a0
.word 0xf9400fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_2
.loc 1 16 0
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
bl _p_3
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xb4000060
.word 0xf9402fa0
bl _p_4
.word 0x14000001
.loc 1 17 0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip iOS_App_Delegate_AppDelegate__ctor
iOS_App_Delegate_AppDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #136]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_5
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

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

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,112,157,14,158,13,68,13,29

.text
	.align 4
plt:
mono_aot_iOSAppDelegate_plt:
	.no_dead_strip plt_UIKit_UIApplication_Main_string___string_string
plt_UIKit_UIApplication_Main_string___string_string:
_p_1:
adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #152]
br x16
.word 253
	.no_dead_strip plt_iOS_Corelib_Utils_LoggingUtil_Exception_System_Exception
plt_iOS_Corelib_Utils_LoggingUtil_Exception_System_Exception:
_p_2:
adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #160]
br x16
.word 258
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_3:
adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #168]
br x16
.word 263
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_4:
adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #176]
br x16
.word 302
	.no_dead_strip plt_iOS_App_AppDelegate__ctor
plt_iOS_App_AppDelegate__ctor:
_p_5:
adrp x16, mono_aot_iOSAppDelegate_got@PAGE+0
add x16, x16, mono_aot_iOSAppDelegate_got@PAGEOFF
ldr x16, [x16, #184]
br x16
.word 330
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_iOSAppDelegate_got, 192
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
	.align 3
	.quad Lglobals_hash

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
	.align 3
	.quad mono_aot_iOSAppDelegate_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 18,192,6,4,70,387000831,0,795
	.long 128,8,8,10,0,14,1544,736
	.long 328,184,0,272,304,232,0,176
	.long 32,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 46,68,223,96,167,149,115,117,250,152,87,180,128,31,19,20
	.globl _mono_aot_module_iOSAppDelegate_info
	.align 3
_mono_aot_module_iOSAppDelegate_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
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

	.byte 16,16
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
	.quad RekTec_App_Std_Application__ctor
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM10=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM11=Lfde0_end - Lfde0_start
	.long LDIFF_SYM11
Lfde0_start:

	.long 0
	.align 3
	.quad RekTec_App_Std_Application__ctor

LDIFF_SYM12=Lme_0 - RekTec_App_Std_Application__ctor
	.long LDIFF_SYM12
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 16,7
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

	.byte 16,16
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

	.byte 20,16
LDIFF_SYM20=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM21=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,0,7
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

	.byte 16,7
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

	.byte 16,7
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

	.byte 24,16
LDIFF_SYM31=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM32=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,16,0,7
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

	.byte 24,16
LDIFF_SYM36=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM37=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,16,0,7
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

	.byte 80,16
LDIFF_SYM41=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM42=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,16,6
	.asciz "entries"

LDIFF_SYM43=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,24,6
	.asciz "count"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,64,6
	.asciz "version"

LDIFF_SYM45=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,68,6
	.asciz "freeList"

LDIFF_SYM46=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM46
	.byte 2,35,72,6
	.asciz "freeCount"

LDIFF_SYM47=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,35,76,6
	.asciz "comparer"

LDIFF_SYM48=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,32,6
	.asciz "keys"

LDIFF_SYM49=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,35,40,6
	.asciz "values"

LDIFF_SYM50=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,35,48,6
	.asciz "_syncRoot"

LDIFF_SYM51=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM51
	.byte 2,35,56,0,7
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

	.byte 16,7
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

	.byte 16,16
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

	.byte 24,16
LDIFF_SYM62=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM63=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,35,16,0,7
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

	.byte 17,16
LDIFF_SYM67=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM68=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,16,0,7
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

	.byte 88,16
LDIFF_SYM72=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM73=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,16,6
	.asciz "m_data"

LDIFF_SYM74=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,24,6
	.asciz "m_types"

LDIFF_SYM75=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,32,6
	.asciz "m_nameToIndex"

LDIFF_SYM76=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,40,6
	.asciz "m_currMember"

LDIFF_SYM77=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,80,6
	.asciz "m_converter"

LDIFF_SYM78=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,48,6
	.asciz "m_fullTypeName"

LDIFF_SYM79=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,56,6
	.asciz "m_assemName"

LDIFF_SYM80=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 2,35,64,6
	.asciz "objectType"

LDIFF_SYM81=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 2,35,72,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM82=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,84,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM83=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,85,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM84=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 2,35,86,0,7
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

	.byte 24,16
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

	.byte 16,16
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

	.byte 16,16
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

	.byte 16,16
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

	.byte 40,16
LDIFF_SYM104=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM105=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,16,6
	.asciz "name"

LDIFF_SYM106=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,24,6
	.asciz "reftype"

LDIFF_SYM107=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,32,0,7
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

	.byte 32,16
LDIFF_SYM111=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM112=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,16,6
	.asciz "default_ctor"

LDIFF_SYM113=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,24,0,7
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

	.byte 48,16
LDIFF_SYM117=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM118=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,24,6
	.asciz "GenericCache"

LDIFF_SYM119=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 2,35,32,6
	.asciz "m_serializationCtor"

LDIFF_SYM120=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 2,35,40,0,7
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

	.byte 16,16
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

	.byte 40,16
LDIFF_SYM128=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM129=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,16,6
	.asciz "method_name"

LDIFF_SYM130=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,24,6
	.asciz "curried_first_arg"

LDIFF_SYM131=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,32,0,7
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

	.byte 104,16
LDIFF_SYM135=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM136=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,16,6
	.asciz "invoke_impl"

LDIFF_SYM137=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,24,6
	.asciz "m_target"

LDIFF_SYM138=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,32,6
	.asciz "method"

LDIFF_SYM139=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,40,6
	.asciz "delegate_trampoline"

LDIFF_SYM140=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,48,6
	.asciz "extra_arg"

LDIFF_SYM141=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,35,56,6
	.asciz "method_code"

LDIFF_SYM142=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,35,64,6
	.asciz "method_info"

LDIFF_SYM143=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,72,6
	.asciz "original_method_info"

LDIFF_SYM144=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,80,6
	.asciz "data"

LDIFF_SYM145=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,88,6
	.asciz "method_is_virtual"

LDIFF_SYM146=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,96,0,7
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

	.byte 112,16
LDIFF_SYM150=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM151=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,35,104,0,7
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

	.byte 112,16
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

	.byte 56,16
LDIFF_SYM159=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM160=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,16,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM161=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,24,6
	.asciz "m_realObject"

LDIFF_SYM162=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,32,6
	.asciz "m_realType"

LDIFF_SYM163=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,40,6
	.asciz "SerializeObjectState"

LDIFF_SYM164=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,48,0,7
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

	.byte 136,1,16
LDIFF_SYM168=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM169=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,16,6
	.asciz "_message"

LDIFF_SYM170=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,24,6
	.asciz "_data"

LDIFF_SYM171=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,32,6
	.asciz "_innerException"

LDIFF_SYM172=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,40,6
	.asciz "_helpURL"

LDIFF_SYM173=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,48,6
	.asciz "_stackTrace"

LDIFF_SYM174=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,56,6
	.asciz "_stackTraceString"

LDIFF_SYM175=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,64,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM176=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,72,6
	.asciz "_remoteStackIndex"

LDIFF_SYM177=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,80,6
	.asciz "_dynamicMethods"

LDIFF_SYM178=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,88,6
	.asciz "_HResult"

LDIFF_SYM179=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,96,6
	.asciz "_source"

LDIFF_SYM180=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM180
	.byte 2,35,104,6
	.asciz "_safeSerializationManager"

LDIFF_SYM181=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,112,6
	.asciz "captured_traces"

LDIFF_SYM182=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2,35,120,6
	.asciz "native_trace_ips"

LDIFF_SYM183=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 3,35,128,1,0,7
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
	.quad RekTec_App_Std_Application_Main_string__
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "args"

LDIFF_SYM187=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,141,16,11
	.asciz "ex"

LDIFF_SYM188=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM189=Lfde1_end - Lfde1_start
	.long LDIFF_SYM189
Lfde1_start:

	.long 0
	.align 3
	.quad RekTec_App_Std_Application_Main_string__

LDIFF_SYM190=Lme_1 - RekTec_App_Std_Application_Main_string__
	.long LDIFF_SYM190
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.align 3
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

	.byte 40,16
LDIFF_SYM195=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM195
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM196=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,16,6
	.asciz "class_handle"

LDIFF_SYM197=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,24,6
	.asciz "flags"

LDIFF_SYM198=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,32,0,7
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

	.byte 40,16
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

	.byte 40,16
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

	.byte 48,16
LDIFF_SYM210=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM210
	.byte 2,35,0,6
	.asciz "__mt_PreferredFocusedView_var"

LDIFF_SYM211=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,35,40,0,7
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

	.byte 48,16
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

	.byte 48,16
LDIFF_SYM219=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,0,6
	.asciz "_window"

LDIFF_SYM220=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,35,40,0,7
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

	.byte 48,16
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
	.quad iOS_App_Delegate_AppDelegate__ctor
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM228=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM229=Lfde2_end - Lfde2_start
	.long LDIFF_SYM229
Lfde2_start:

	.long 0
	.align 3
	.quad iOS_App_Delegate_AppDelegate__ctor

LDIFF_SYM230=Lme_2 - iOS_App_Delegate_AppDelegate__ctor
	.long LDIFF_SYM230
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
