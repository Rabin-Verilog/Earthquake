Echidna test

First install the properties:

forge install crytic/properties

Then run echidna:

echidna-test ./src/echidna/ERC1155test.sol --contract ERC1155test --config ./src/echidna/config.yaml