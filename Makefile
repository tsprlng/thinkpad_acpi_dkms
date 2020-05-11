KVERSION := $(shell uname -r)

TARGET_MODULE := thinkpadacpi

EXTRA_CFLAGS := -Idrivers/platform/x86

obj-m += $(TARGET_MODULE).o

$(TARGET_MODULE)-objs := 

default:
	make -C /lib/modules/$(KVERSION)/build/ SUBDIRS=$(PWD) modules
debug:
	make -C /lib/modules/$(KVERSION)/build/ SUBDIRS=$(PWD) modules
install:
	cp $(TARGET_MODULE).ko /lib/modules/$(KVERSION)/kernel/drivers/platform/x86 -f
clean:
	rm -f *.o *.ko
	rm -f $(TARGET_MODULE).mod.c
