
#!/usr/bin/env bash

BUCKET_NAME="YOU_BUCKET_NAME"
BUCKET_MOUNT="./files"
CRED_PATH="/etc/passwd-s3fs"  # passwd-s3fs should contain access id : secret key 

pkgs=(
  automake
  fuse-devel
  gcc-c++
  git
  libcurl-devel
  libxml2-devel
  make
  openssl-devel
  fuse
  fuse-devel
  fuse-libs
  libconfuse-devel
  libconfuse
);

sudo yum install -y "${pkgs[@]}"

git clone https://github.com/s3fs-fuse/s3fs-fuse.git
cd s3fs-fuse/
./autogen.sh
./configure
make
sudo make install

/* Make sure you have copied file with credentials to server */
sudo chmod 600 $CRED_PATH

s3fs $BUCKET_NAME $BUCKET_MOUNT -o passwd_file=$CRED_PATH
