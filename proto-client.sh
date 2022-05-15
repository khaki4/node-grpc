mkdir -p ./my-app/src/proto
protoc -I=. ./proto/*.proto \
  --js_out=import_style=commonjs:./client/src \
  --grpc-web_out=import_style=typescript,mode=grpcwebtext:./client/src
