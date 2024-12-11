#!/bin/bash

PROTO_IN_DIR=./grpc-proto/src
PROTO_OUT_DIR=./src/proto

mkdir -p ${PROTO_OUT_DIR}

protoc --plugin=$(npm root)/.bin/protoc-gen-ts_proto \
 --ts_proto_out=${PROTO_OUT_DIR} \
 --ts_proto_opt=outputServices=grpc-js \
 --ts_proto_opt=esModuleInterop=true \
 -I=${PROTO_IN_DIR}/ ${PROTO_IN_DIR}/*.proto