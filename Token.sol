// 0.5.1-c8a2
// Enable optimization
pragma solidity ^0.5.0;

import "./ERC20.sol";
import "./ERC20Detailed.sol";

/**
 * @title Wrapped BEN
 * @dev Wrapped BEN
 * Wrapped BEN
 * `ERC20` functions.
 */
contract Token is ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor () public ERC20Detailed("Wrapped BEN", "wBEN", 18) {
        _mint(msg.sender, 100000000 * (10 ** uint256(decimals())));
    }
}