cmd_scripts/sorttable := gcc -Wp,-MMD,scripts/.sorttable.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -O2 -I/builder/shared-workdir/build/staging_dir/host/include  -Wall -Wmissing-prototypes -Wstrict-prototypes   -I/builder/shared-workdir/build/staging_dir/host/include -I./tools/include   -o scripts/sorttable scripts/sorttable.c -L/builder/shared-workdir/build/staging_dir/host/lib 

source_scripts/sorttable := scripts/sorttable.c

deps_scripts/sorttable := \
  /builder/shared-workdir/build/staging_dir/host/include/elf.h \
  tools/include/tools/be_byteshift.h \
  tools/include/tools/le_byteshift.h \
  scripts/sorttable.h \

scripts/sorttable: $(deps_scripts/sorttable)

$(deps_scripts/sorttable):
