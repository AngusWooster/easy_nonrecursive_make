project:=calculator

target_$(project)_libs:= $(DIR_REL_LIB)/lib$(project).so


target_examples := sub_compute add_compute math_compute
target_example_dir := $(DIR_REL)/example
export CC CF_ALL target_example_dir target_examples
.PHONY: target_$(project)_examples
target_$(project)_examples:
	@cp -r example $(target_example_dir)
	$(MAKE) -f examples.mk


libs := sub add
libs_$(project) := $(foreach L, $(libs), $(M_LIB$(L)))
$(target_$(project)_libs):$(libs_$(project))
	$(CC) -shared -o $(@) -Wl,--whole-archive $(^) -Wl,--no-whole-archive
	@for lib in $(libs); \
	do \
		cp module/$$lib/inc/*.h $(DIR_REL_INC);\
		echo cp module/$$lib/inc/*.h $(DIR_REL_INC);\
	done


.PHONY: ex
ex: target_$(project)_examples
ex: $(target_$(project)_libs)
	@#echo ex CURDIR = $(CURDIR)
	@#echo MAKEFILE_LIST = $(MAKEFILE_LIST)
	@#echo target_$(project)_libs:$(target_$(project)_libs)
	@#echo MAKECMDGOALS = $(MAKECMDGOALS)
