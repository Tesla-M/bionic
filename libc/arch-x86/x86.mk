# 32-bit x86.

#
# Default implementations of functions that are commonly optimized.
#

libc_bionic_src_files_x86 += \
    arch-x86/atom/string/sse2-memchr-atom.S \
    arch-x86/atom/string/sse2-memrchr-atom.S \
    arch-x86/atom/string/sse2-strchr-atom.S \
    arch-x86/atom/string/sse2-strnlen-atom.S \
    arch-x86/atom/string/sse2-strrchr-atom.S \
    arch-x86/atom/string/sse2-wcschr-atom.S \
    arch-x86/atom/string/sse2-wcsrchr-atom.S \
    arch-x86/atom/string/sse2-wcslen-atom.S \
    arch-x86/atom/string/sse2-wcscmp-atom.S \
    arch-x86/silvermont/string/sse2-bcopy-slm.S \
    arch-x86/silvermont/string/sse2-memcpy-slm.S \
    arch-x86/silvermont/string/sse2-memmove-slm.S \
    arch-x86/silvermont/string/sse2-memset-slm.S \
    arch-x86/silvermont/string/sse2-stpcpy-slm.S \
    arch-x86/silvermont/string/sse2-stpncpy-slm.S \
    arch-x86/silvermont/string/sse2-strcpy-slm.S \
    arch-x86/silvermont/string/sse2-strlen-slm.S \
    arch-x86/silvermont/string/sse2-strncpy-slm.S

libc_bionic_src_files_x86 += \
    arch-x86/generic/string/memcmp.S \
    arch-x86/generic/string/strcmp.S \
    arch-x86/generic/string/strncmp.S \
    arch-x86/generic/string/strcat.S

libc_freebsd_src_files_x86 += \
    upstream-freebsd/lib/libc/string/wmemmove.c \

#
# Inherently architecture-specific functions.
#

libc_bionic_src_files_x86 += \
    arch-x86/bionic/__bionic_clone.S \
    arch-x86/bionic/_exit_with_stack_teardown.S \
    arch-x86/bionic/libgcc_compat.c \
    arch-x86/bionic/__restore.S \
    arch-x86/bionic/setjmp.S \
    arch-x86/bionic/__set_tls.c \
    arch-x86/bionic/syscall.S \
    arch-x86/bionic/vfork.S \

## ARCH variant specific source files
arch_variant_mk := $(LOCAL_PATH)/arch-x86/$(TARGET_ARCH_VARIANT)/$(TARGET_ARCH_VARIANT).mk
ifeq ($(wildcard $(arch_variant_mk)),)
    arch_variant_mk := $(LOCAL_PATH)/arch-x86/generic/generic.mk
endif
include $(arch_variant_mk)
libc_common_additional_dependencies += $(arch_variant_mk)

arch_variant_mk :=

libc_crt_target_cflags_x86 := \
    -m32 \
    -I$(LOCAL_PATH)/arch-x86/include

libc_crt_target_ldflags_x86 := -melf_i386

libc_crt_target_crtbegin_file_x86 := \
     $(LOCAL_PATH)/arch-common/bionic/crtbegin.c

libc_crt_target_crtbegin_so_file_x86 := \
    $(LOCAL_PATH)/arch-common/bionic/crtbegin_so.c

libc_crt_target_so_cflags_x86 := \
    -fPIC
