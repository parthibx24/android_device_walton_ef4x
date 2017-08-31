cmd_usr/initramfs_data.o := arm-eabi-gcc -Wp,-MD,usr/.initramfs_data.o.d  -nostdinc -isystem /home/parthib/zcompile/cm/los13/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/../lib/gcc/arm-eabi/4.8/include -I/home/parthib/zcompile/cm/los13/kernel/sprd/arch/arm/include -Iarch/arm/include/generated  -I/home/parthib/zcompile/cm/los13/kernel/sprd/include -Iinclude -I/home/parthib/zcompile/cm/los13/kernel/sprd/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/parthib/zcompile/cm/los13/kernel/sprd/include/uapi -Iinclude/generated/uapi -include /home/parthib/zcompile/cm/los13/kernel/sprd/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian   -I/home/parthib/zcompile/cm/los13/kernel/sprd/arch/arm/mach-sc/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -gdwarf-2 -DINITRAMFS_IMAGE="usr/initramfs_data.cpio"   -c -o usr/initramfs_data.o /home/parthib/zcompile/cm/los13/kernel/sprd/usr/initramfs_data.S

source_usr/initramfs_data.o := /home/parthib/zcompile/cm/los13/kernel/sprd/usr/initramfs_data.S

deps_usr/initramfs_data.o := \
    $(wildcard include/config/64bit.h) \
  /home/parthib/zcompile/cm/los13/kernel/sprd/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/parthib/zcompile/cm/los13/kernel/sprd/include/linux/stringify.h \
  /home/parthib/zcompile/cm/los13/kernel/sprd/include/asm-generic/vmlinux.lds.h \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
    $(wildcard include/config/clksrc/of.h) \
    $(wildcard include/config/irqchip.h) \
    $(wildcard include/config/common/clk.h) \
    $(wildcard include/config/of/reserved/mem.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/pm/trace.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
  /home/parthib/zcompile/cm/los13/kernel/sprd/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \

usr/initramfs_data.o: $(deps_usr/initramfs_data.o)

$(deps_usr/initramfs_data.o):
