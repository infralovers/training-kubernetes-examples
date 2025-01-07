#!/bin/sh
# Replace <ENV-USER-ID>
find 12* deployment* handson* -type f -exec sed -i -e "s/<ENV-USER-ID>/$USER_ID/g" {} \;
# Replace <ENV-ANIMAL>
find 12* deployment* handson* -type f -exec sed -i -e "s/<ENV-ANIMAL>/$ANIMAL/g" {} \;
# Replace <ENV-NAME>
find 12* deployment* handson* -type f -exec sed -i -e "s/<ENV-NAME>/$ENVIRONMENT/g" {} \;
# Replace <ENV-DOMAIN>
find 12* deployment* handson* -type f -exec sed -i -e "s/<ENV-DOMAIN>/$DOMAIN/g" {} \;
