
CF_ALL := -fPIC
CF_TGT :=


CFG = setting.cfg
PF_MK := X86
PRJ_MK := calculator

DIR_BUILD := build
DIR_LIB := $(DIR_BUILD)/lib
DIR_OBJ := $(DIR_BUILD)/obj
DIR_RELEASE := release
DIR_REL := release/$(PF_MK)
DIR_REL_LIB := release/$(PF_MK)/lib
DIR_REL_INC := release/$(PF_MK)/inc
OUTPUT_DIRS := $(DIR_LIB) $(DIR_OBJ) $(DIR_REL) $(DIR_REL_LIB) $(DIR_REL_INC)

QUIET :=

.PHONY: NoneTarget
NoneTarget:
	$(error Should assign what you want to make)

include mk/platform/$(PF_MK).mk


include modules.mk

include examples.mk

include mk/package/$(PRJ_MK).mk

include rule.mk