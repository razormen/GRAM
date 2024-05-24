#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=de.ton.hashrate.to:4003
WALLET=UQAETUP_xHhGt6SyHZ4PaU7VSmyGylLDBvZUO3hEwSWFbTpK
PASS=x

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner -a GRAM --pool $POOL --user $WALLET --pass $PASS $@
