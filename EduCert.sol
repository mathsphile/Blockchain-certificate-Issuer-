// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EduCert {
    struct Certificate {
        uint256 id;
        string studentName;
        string courseName;
        string issueDate;
        address issuedBy;
    }

    mapping(uint256 => Certificate) public certificates;
    uint256 public nextId;
    address public owner;

    constructor() {
        owner = msg.sender;
        nextId = 1;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can issue certificates");
        _;
    }

    // Issue a new certificate
    function issueCertificate(
        string memory studentName,
        string memory courseName,
        string memory issueDate
    ) public onlyOwner {
        certificates[nextId] = Certificate(
            nextId,
            studentName,
            courseName,
            issueDate,
            msg.sender
        );
        nextId++;
    }

    // View certificate by ID
    function getCertificate(uint256 id)
        public
        view
        returns (Certificate memory)
    {
        require(id > 0 && id < nextId, "Certificate not found");
        return certificates[id];
    }
}
