cmd_scripts/module.lds := x86_64-openwrt-linux-musl-gcc -E  -Wp,-MMD,scripts/.module.lds.d  -nostdinc -isystem /builder/shared-workdir/build/staging_dir/toolchain-x86_64_gcc-11.2.0_musl/lib/gcc/x86_64-openwrt-linux-musl/11.2.0/include -I./arch/x86/include -I./arch/x86/include/generated  -I./include -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__ -fmacro-prefix-map=./=     -P -Ux86 -D__ASSEMBLY__ -DLINKER_SCRIPT -o scripts/module.lds scripts/module.lds.S

source_scripts/module.lds := scripts/module.lds.S

deps_scripts/module.lds := \
    $(wildcard include/config/lto/clang.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/cc/version/text.h) \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  arch/x86/include/generated/asm/module.lds.h \
  include/asm-generic/module.lds.h \

scripts/module.lds: $(deps_scripts/module.lds)

$(deps_scripts/module.lds):
