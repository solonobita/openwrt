cmd_scripts/mod/mk_elfconfig := gcc -Wp,-MMD,scripts/mod/.mk_elfconfig.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -O2 -I/builder/shared-workdir/build/staging_dir/host/include  -Wall -Wmissing-prototypes -Wstrict-prototypes   -I/builder/shared-workdir/build/staging_dir/host/include    -o scripts/mod/mk_elfconfig scripts/mod/mk_elfconfig.c -L/builder/shared-workdir/build/staging_dir/host/lib 

source_scripts/mod/mk_elfconfig := scripts/mod/mk_elfconfig.c

deps_scripts/mod/mk_elfconfig := \
  /builder/shared-workdir/build/staging_dir/host/include/elf.h \

scripts/mod/mk_elfconfig: $(deps_scripts/mod/mk_elfconfig)

$(deps_scripts/mod/mk_elfconfig):
