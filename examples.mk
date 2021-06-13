#export CC CF_ALL DIR_REL

#EXAMPLE_FOLDER:= $(DIR_REL)/example
#EXAMPLES: sub_compute



#sub_compute:
#	@#echo  DIR_REL = $(DIR_REL)
#	@#echo  CC = $(CC)
#	@#echo  CF_ALL = $(CF_ALL)
#	@#echo  EXAMPLE_FOLDER = $(EXAMPLE_FOLDER)
#	$(MAKE) -C $(EXAMPLE_FOLDER)/$@
#

$(target_examples):
	@for ex in $(target_examples); \
	do \
		$(MAKE) -C $(target_example_dir)/$$ex; \
	done
