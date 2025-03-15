#!/bin/bash

contact_address=$1
receive_address=$2

rm ./scripts/mint-token.js

cp ./scripts/mint-token.js.bk ./scripts/mint-token.js

sed -i "s/0x6666666666/$contact_address/" "./scripts/mint-token.js"
sed -i "s/0x88888888/$receive_address/" "./scripts/mint-token.js"

npx hardhat run --network inksepolia scripts/mint-token.js

echo "wait for 6s..."
sleep 6
