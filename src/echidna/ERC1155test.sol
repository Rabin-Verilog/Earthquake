// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import "../SemiFungibleVault.sol";
import {ERC20} from "@solmate/tokens/ERC20.sol";
import {PropertiesConstants} from "properties/util/PropertiesConstants.sol";
import {CryticERC20ExternalBasicProperties} from "properties/ERC20/external/properties/ERC20ExternalBasicProperties.sol";

contract ERC1155test is SemiFungibleVault, CryticERC20ExternalBasicProperties  {

    constructor() SemiFungibleVault(ERC20(address(new CryticTokenMock())),"test","tst") {

    }
}

contract CryticTokenMock is ERC20, PropertiesConstants {

    constructor () ERC20("TEST", "TT", 18) {
        _mint(USER1, INITIAL_BALANCE);
        _mint(USER2, INITIAL_BALANCE);
        _mint(USER3, INITIAL_BALANCE);
        _mint(msg.sender, INITIAL_BALANCE);

    }
}