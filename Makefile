# ------------------------------------------------------------------ #
# HELPERS
# ------------------------------------------------------------------ #

GCC := aarch64-elf-gcc

# ------------------------------------------------------------------ #
# MAKE
# ------------------------------------------------------------------ #

all: main
	true
	
main: main.o
	true

main.o: main.S
	true

.PHONY: run
run:
	qemu-system-aarch64 -machine virt

# copied from linux kernel
.PHONY: clean
clean: $(clean-dirs)
	$(call cmd,rmfiles)
	@find . $(RCS_FIND_IGNORE) \
		\( -name '*.[aios]' -o -name '*.rsi' -o -name '*.ko' -o -name '.*.cmd' \
		-o -name '*.ko.*' \
		-o -name '*.dtb' -o -name '*.dtbo' \
		-o -name '*.dtb.S' -o -name '*.dtbo.S' \
		-o -name '*.dt.yaml' -o -name 'dtbs-list' \
		-o -name '*.dwo' -o -name '*.lst' \
		-o -name '*.su' -o -name '*.mod' \
		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
		-o -name '*.lex.c' -o -name '*.tab.[ch]' \
		-o -name '*.asn1.[ch]' \
		-o -name '*.symtypes' -o -name 'modules.order' \
		-o -name '*.c.[012]*.*' \
		-o -name '*.ll' \
		-o -name '*.gcno' \
		\) -type f -print \
		-o -name '.tmp_*' -print \
		| xargs rm -rf
