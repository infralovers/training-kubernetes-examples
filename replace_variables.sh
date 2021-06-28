#!/bin/sh

# Replace <ENV-USER-ID>
find 12* deployment* handson* -type f -exec sed -i '' -e "s/<ENV-USER-ID>/$USER_ID/g" {} \;

# Replace <ENV-ANIMAL>
find 12* deployment* handson* -type f -exec sed -i '' -e "s/<ENV-ANIMAL>/$ANIMAL/g" {} \;
