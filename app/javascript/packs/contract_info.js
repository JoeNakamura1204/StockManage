//contract address & abi
export const address = "0xfe0a2eddd0105a52fb5b1ba0d447c4bb4da135f7";

export const abi =[
    {
        "constant": false,
        "inputs": [
            {
                "name": "_metadata",
                "type": "string"
            }
        ],
        "name": "CreateDocumentsHistory",
        "outputs": [],
        "payable": false,
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "anonymous": false,
        "inputs": [
            {
                "indexed": false,
                "name": "_metadata",
                "type": "string"
            }
        ],
        "name": "completeMined",
        "type": "event"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "",
                "type": "address"
            }
        ],
        "name": "CompanyDocumentCount",
        "outputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "name": "DocumentHistories",
        "outputs": [
            {
                "name": "documentId",
                "type": "uint256"
            },
            {
                "name": "metaData",
                "type": "string"
            },
            {
                "name": "edited",
                "type": "bool"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "",
                "type": "uint256"
            }
        ],
        "name": "DocumentsToCompany",
        "outputs": [
            {
                "name": "",
                "type": "address"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    },
    {
        "constant": true,
        "inputs": [
            {
                "name": "_owner",
                "type": "address"
            }
        ],
        "name": "getDocumentsByCompany",
        "outputs": [
            {
                "name": "",
                "type": "uint256[]"
            }
        ],
        "payable": false,
        "stateMutability": "view",
        "type": "function"
    }
];