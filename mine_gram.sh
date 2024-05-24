#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=us.ton.hashrate.to:4002
WALLET=UQAETUP_xHhGt6SyHZ4PaU7VSmyGylLDBvZUO3hEwSWFbTpK
PASS=x

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a GRAM --pool $POOL --user $WALLET --pass $PASS $@
