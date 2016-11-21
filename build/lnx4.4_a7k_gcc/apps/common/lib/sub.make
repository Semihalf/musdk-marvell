###############################################################################
##########################  Common-Lib sub.make   #############################
###############################################################################
OBJ := cli.o

INC := $(TOPINC)
DEF := $(TOPDEF)

lcommon_lib.o: $(OBJ)
	@(echo "(LD)  $@ <= $^")
	@($(LD) -r -o $@ -Map $*.map $^)

include $(TOPDIR)/Rules.make
