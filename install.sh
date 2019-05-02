#!/usr/bin/env bash
# Initial build
./toolchain.py build python2 kivy

# Get our music21-form code installed into the kivy build
wget https://github.com/AlmogCohen/music21/archive/issue-190-beam-issues.zip -O /tmp/music21-fork.zip
cur_dir=`pwd`
cd /tmp
unzip -o music21-fork.zip
cd ${cur_dir}
rm -rf ${cur_dir}/dist/root/python2/lib/python2.7/site-packages/music21
mv /tmp/music21-issue-190-beam-issues/music21 ${cur_dir}/dist/root/python2/lib/python2.7/site-packages/music21

# Generate the xCode folder and project
./toolchain.py create TestApp `pwd`/test_app