# Verbosity
V            ?= 0
ifeq ($(V),1)
	VERBOSE	=
else
	VERBOSE = @
endif


DIRS = caterpillar \
	pwms \
	traffic_light


all:
	$(VERBOSE) for i in $(DIRS); do $(MAKE) -C $$i $@ || exit $?; done


clean:
	$(VERBOSE) for i in $(DIRS); do $(MAKE) -C $$i $@ || exit $?; done


distclean:
	$(VERBOSE) for i in $(DIRS); do $(MAKE) -C $$i $@ || exit $?; done


mrproper:
	$(VERBOSE) for i in $(DIRS); do $(MAKE) -C $$i $@ || exit $?; done
