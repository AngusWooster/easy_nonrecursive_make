m := sub
dir_$(m) := $(DIR_LIB)/$(dir) $(DIR_OBJ)/$(dir)
srcs := sub.c
objs := $(srcs:%.c=%.o)
M_LIB$(m) := $(DIR_LIB)/$(dir)/lib$(m).a


$(dir_$(m)):
	mkdir -p $(@)

includes_$(m) := -I$(dir)/inc

srcs_$(m) := $(addprefix $(dir)/, $(srcs))
objs_$(m) := $(addprefix $(DIR_OBJ)/$(dir)/, $(objs))
deps_$(m) := $(addprefix $(DIR_OBJ)/$(dir)/, $(srcs:%.c=%.d))
-include $(deps_$(m))

$(objs_$(m)): CF_TGT := $(includes_$(m))
$(objs_$(m)): $(srcs_$(m)) | $(dir_$(m))


$(M_LIB$(m)): $(objs_$(m))

