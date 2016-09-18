###############################################################################
##############################  src sub.make   ################################
###############################################################################
SUBDIRS := lib sys drivers/ppv2

INC := $(TOPINC)
DEF := $(TOPDEF)

lmusdk.o: llib.o lsys.o lpp2.o
	@(echo "(LD)  $@ <= $^")
	@($(LD) -r -o $@ -Map $*.map $^)

include $(TOPDIR)/Rules.make
