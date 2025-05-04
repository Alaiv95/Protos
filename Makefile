PROTO_FILE = proto/auth/auth.proto
OUT_DIR = gen/go

generate:
	protoc -I proto $(PROTO_FILE) \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative

clean:
	rm -rf $(OUT_DIR)
