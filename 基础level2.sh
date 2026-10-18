#!/bin/bash

cd /workspace
find . -name "*signal*"
grep -r "ACCESS_KEY=" .

# 处理 A 段
rm -f input
cp -f archive/2026/signal-A.bin input
./exam -e STAR
mv output output-A

# 处理 B 段
rm -f input
cp -f inbox/signal-B.bin input
./exam -e STAR
mv output output-B

# 合并结果
cat output-A output-B > flag