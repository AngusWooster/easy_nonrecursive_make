
$(target_examples):
	@for ex in $(target_examples); \
	do \
		$(MAKE) -C $(target_example_dir)/$$ex; \
	done
