#modules := $(subst ./,,$(dir $(shell find . -name module.mk)))
#
#$(info modules=$(modules))
#include $(addsuffix module.mk, $(modules))


d := module
dir := $(d)/add
include $(dir)/module.mk
dir := $(d)/sub
include $(dir)/module.mk