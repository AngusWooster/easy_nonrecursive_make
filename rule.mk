### create following folders when make parses this makefile. ###
$(shell mkdir -p $(OUTPUT_DIRS))

$(DIR_OBJ)/%.o:%.c
	$(CC) $(CF_ALL) $(CF_TGT) -o $(@) -c $(<) $(INCLUDE)
	$(CC) $(CF_TGT) -MM $(<) | sed 's,$(notdir $(<:%.c=%.o)),$@,' > $(@:%.o=%.d)

%.a:
	$(AR) -crs $(@) $(^)


.PHONY: clean
clean:
	rm -rf $(DIR_BUILD) $(DIR_RELEASE)
