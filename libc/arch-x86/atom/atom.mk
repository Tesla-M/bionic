libc_bionic_src_files_x86 += \
    arch-x86/atom/string/sse2-memset-atom.S \
    arch-x86/atom/string/sse2-strchr-atom.S \
    arch-x86/atom/string/sse2-strlen-atom.S \
    arch-x86/atom/string/sse2-strnlen-atom.S \
    arch-x86/atom/string/sse2-strrchr-atom.S \
    arch-x86/atom/string/sse2-wcschr-atom.S \
    arch-x86/atom/string/sse2-wcsrchr-atom.S \
    arch-x86/atom/string/sse2-wcslen-atom.S \
    arch-x86/atom/string/sse2-wcscmp-atom.S \
    arch-x86/atom/string/ssse3-bcopy-atom.S \
    arch-x86/atom/string/ssse3-memcmp-atom.S \
    arch-x86/atom/string/ssse3-memcpy-atom.S \
    arch-x86/atom/string/ssse3-memmove-atom.S \
    arch-x86/atom/string/ssse3-strcat-atom.S \
    arch-x86/atom/string/ssse3-strcmp-atom.S \
    arch-x86/atom/string/ssse3-strcpy-atom.S \
    arch-x86/atom/string/ssse3-strlcat-atom.S \
    arch-x86/atom/string/ssse3-strlcpy-atom.S \
    arch-x86/atom/string/ssse3-strncat-atom.S \
    arch-x86/atom/string/ssse3-strncmp-atom.S \
    arch-x86/atom/string/ssse3-strncpy-atom.S \
    arch-x86/atom/string/ssse3-wcscat-atom.S \
    arch-x86/atom/string/ssse3-wcscpy-atom.S \
    arch-x86/atom/string/ssse3-wmemcmp-atom.S

libc_bionic_src_files_exclude_x86 += \
    arch-x86/generic/string/memcmp.S \

libc_bionic_src_files_exclude_x86 += \
    arch-x86/silvermont/string/sse2-bcopy-slm.S \
    arch-x86/silvermont/string/sse2-memcpy-slm.S \
    arch-x86/silvermont/string/sse2-memmove-slm.S \
    arch-x86/silvermont/string/sse2-memset-slm.S \
    arch-x86/silvermont/string/sse2-strcpy-slm.S \
    arch-x86/silvermont/string/sse2-strlen-slm.S \
    arch-x86/silvermont/string/sse2-strncpy-slm.S \

libc_freebsd_src_files_exclude_x86 += \
    upstream-freebsd/lib/libc/string/wmemcmp.c \
