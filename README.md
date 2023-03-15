### **Echidna tests**

**Setup**

First install the dependencies:

```bash
forge install
```

Then install the crytic properties:

```bash
forge install crytic/properties
```

To run echidna:

echidna-test ./src/echidna/ERC1155test.sol --contract ERC1155test --config ./src/echidna/config.yaml
