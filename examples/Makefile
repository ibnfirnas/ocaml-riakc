export OCAMLPATH:=$(OCAMLPATH):../lib

CAMLP4=
OCAMLC_OPTS=-package riakc
OCAMLOPT_OPTS=$(OCAMLC_OPTS)

NON_LIB_MODULES=ping.ml client_id.ml server_info.ml \
	list_buckets.ml list_keys.ml bucket_props.ml \
	get.ml put.ml delete.ml

native_bin=$(NON_LIB_MODULES:%.ml=%.native)

byte_bin=$(NON_LIB_MODULES:%.ml=%.byte)

.PHONY: all native-code byte-code test clean

all: native-code byte-code

native-code: $(native_bin)

ping.native: ping.cmx

client_id.native: client_id.cmx

server_info.native: server_info.cmx

list_buckets.native: list_buckets.cmx

list_keys.native: list_keys.cmx

bucket_props.native: bucket_props.cmx

get.native: get.cmx

put.native: put.cmx

delete.native: delete.cmx

byte-code: $(byte_bin)

ping.byte: ping.cmo

client_id.byte: client_id.cmo

server_info.byte: server_info.cmo

list_buckets.byte: list_buckets.cmo

list_keys.byte: list_keys.cmo

bucket_props.byte: bucket_props.cmo

get.byte: get.cmo

put.byte: put.cmo

delete.byte: delete.cmo

test:

clean:
	-rm -f *.native *.byte *.cmx *.cmo *.o *.cmi

# Dependencies
include ../lib/Ocamlrules.mk.in
