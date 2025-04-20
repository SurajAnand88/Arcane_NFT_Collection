// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CallContract {
    address public s_encodeAddress;
    uint256 public s_encodeData;

    function transfer(address someAddress, uint256 amount) public {
        s_encodeAddress = someAddress;
        s_encodeData = amount;
    }

    function getSelectorwithEncode() public pure returns (bytes4 selector) {
        selector = bytes4(keccak256(bytes("transfer(address,uint256)")));
    }

    function getDataCallTransfer(
        address someAddress,
        uint256 amount
    ) public pure returns (bytes memory) {
        return
            abi.encodeWithSelector(
                getSelectorwithEncode(),
                someAddress,
                amount
            );
    }

    function callTransferWithSelector(
        address someAddress,
        uint256 amount
    ) public returns (bool, bytes4) {
        (bool success, bytes memory returnData) = address(this).call(
            // getDataCallTransfer(someAddress, amount) We can call this function also
            abi.encodeWithSelector(getSelectorwithEncode(), someAddress, amount)
        );
        return (success, bytes4(returnData));
    }

    // function getSignatureEncode(address someAddress, uint256 amount) public pure returns(bytes4){
    //         return bytes4(abi.encodeWithSignature("transfer(address,uint256", someAddress,amount));
    // }

    // function getSelectoreEncode(address someAddress, uint256 amount) public pure returns (bytes4){
    //     return bytes4(abi.encodeWithSelector(getSelectorwithEncode(),someAddress,amount));
    // }

    function callTransferWithSignature(
        address someAddress,
        uint256 amount
    ) public returns (bool, bytes4) {
        (bool success, bytes memory returnData) = address(this).call(
            abi.encodeWithSignature(
                "transfer(address,uint256)",
                someAddress,
                amount
            )
        );
        return (success, bytes4(returnData));
    }
}

contract ContractWithoutInteraction {
    address public s_callContractAddress;

    constructor(address _callContract) {
        s_callContractAddress = _callContract;
    }

    function callTransferWithSelector(
        address someAddress,
        uint256 amount
    ) public returns (bool, bytes4) {
        (bool success, bytes memory returnData) = address(s_callContractAddress)
            .call(
                abi.encodeWithSelector(
                    bytes4(keccak256("transfer(address,uint256)")),
                    someAddress,
                    amount
                )
            );
        return (success, bytes4(returnData));
    }

    function callTransferWithSignature(
        address someAddress,
        uint256 amount
    ) public returns (bool, bytes4) {
        (bool success, bytes memory returnData) = address(s_callContractAddress)
            .call(
                abi.encodeWithSignature(
                    "transfer(address,uint256)",
                    someAddress,
                    amount
                )
            );

        return (success, bytes4(returnData));
    }
}
