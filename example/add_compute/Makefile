CC:=gcc
CF_ALL := -fPIC
TRAGET := test
SRCS_LIST := 1.c \
			 2.c \
			 3.c \
			 main.c
TARGETDIR := targetdir
OBJS_LIST := $(SRCS_LIST:%.c=%.o)
DEPS := $(SRCS_LIST:%.c=%.d)

$(TRAGET):$(OBJS_LIST)
$(TRAGET):|$(TARGETDIR)
	echo builbuildbuild
	gcc -o $(@) $(^)
	cp $(@) $(TARGETDIR)
	echo TRY = $(TRY)

%.o:%.c
	gcc -g -fPIC -DANGUS="0425" -o $(@) -c $(<)
	$(CC) -MM -MF $(@:%.o=%.d) $(<)

#%.d:%.c
#	gcc -MM -MF $(@) $(<)
-include $(DEPS)


$(TARGETDIR):
	echo hihihi
	mkdir -p $@



.PHONY: clean
clean:
	rm *.o *.d -f
	rm -rf $(TARGETDIR)
	rm $(TRAGET) -f

