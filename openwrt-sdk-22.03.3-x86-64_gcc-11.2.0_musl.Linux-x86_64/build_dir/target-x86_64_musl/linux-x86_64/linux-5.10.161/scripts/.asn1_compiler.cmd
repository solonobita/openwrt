cmd_scripts/asn1_compiler := gcc -Wp,-MMD,scripts/.asn1_compiler.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -O2 -I/builder/shared-workdir/build/staging_dir/host/include  -Wall -Wmissing-prototypes -Wstrict-prototypes   -I/builder/shared-workdir/build/staging_dir/host/include -I./include   -o scripts/asn1_compiler scripts/asn1_compiler.c -L/builder/shared-workdir/build/staging_dir/host/lib 

source_scripts/asn1_compiler := scripts/asn1_compiler.c

deps_scripts/asn1_compiler := \
  include/linux/asn1_ber_bytecode.h \
  include/linux/asn1.h \

scripts/asn1_compiler: $(deps_scripts/asn1_compiler)

$(deps_scripts/asn1_compiler):
