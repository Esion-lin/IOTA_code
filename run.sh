cd secp256k1-1e6f1f5ad5e7f1e3ef79313ec02023902bf8175c
./autogen.sh
./ sudo ./configure  --enable-jni --enable-module_ecdh --enable-experimental
make

cd ../libhotstuff/
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED=ON -DHOTSTUFF_PROTO_LOG=ON
make



