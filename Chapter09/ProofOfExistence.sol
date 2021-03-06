pragma solidity ^0.7.0;

contract ProofOfExistence {

    mapping (bytes32 => bool) private proofs;

    //---events---
    event DocumentNotarized(
        address from,
        string text,
        bytes32 hash
    );

    event NotarizationError(
        address from,
        string text,
        string reason
    );

    function storeProof(bytes32 proof) private {
        proofs[proof] = true;
    }

    function notarize(string memory document) public payable {
        //---check if string was previously stored---
        if(proofs[proofFor(document)]){
            //---fire the event---
            emit NotarizationError(msg.sender, document,
                "String was stored previously"
            );

            //---refund back to sender---
            msg.sender.transfer(msg.value);

            //---exit the function---
            return;
        }

        if(msg.value != 1 ether){
            //---fire the event---
            emit NotarizationError(msg.sender, document,
                "Incorrect amount of Ether paid"
            );
            //---refund back to sender---
            msg.sender.transfer(msg.value);

            //---exit the function---
            return;
        }

        //---store the hash of the string---
        storeProof(proofFor(document));

        //---fire the event---
        emit DocumentNotarized(msg.sender, document,
            proofFor(document)
        );
    }

    function proofFor(string memory document) private
    pure returns (bytes32){
        return sha256(bytes(document));
    }

    function checkDocument(string memory document) public
    view returns (bool) {
        return proofs[proofFor(document)];
    }

}