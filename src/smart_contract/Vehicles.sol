//SPDX-License-Identifier: MIT

// pragma solidity ^0.8.16;

// contract VANET {
//     struct Vehicle {
//         string name;
//         string owner;
//         string number;
//         string license;
//     }
//     Vehicle[] private vehicles;

//     event VehicleAdded(
//         string name,
//         string owner,
//         string number,
//         string license
//     );

//     function addVehicle(string memory _name, string memory _owner, string memory _number, string memory _license) public {
//         vehicles.push(
//             Vehicle(_name, _owner, _number, _license)
//         );
//         emit VehicleAdded(_name, _owner, _number, _license);
//     }

//     function getVehicles() public view returns (Vehicle[] memory) {
//         return vehicles;
//     }
// }


pragma solidity ^0.8.16;

contract VANET {
    struct Vehicle {
        string ownerName;
        string ownerNumber;
        string OwnerAddress;
        string model;
        string soldDate;
    }
    Vehicle[] private vehicles;


    function addVehicle(string memory _ownerName, string memory _ownerNumber, string memory _ownerAddress, string memory _model, string memory _soldDate) public {
        vehicles.push(
            Vehicle(_ownerName, _ownerNumber, _ownerAddress, _model, _soldDate)
        );
    }

    function getVehicles() public view returns (Vehicle[] memory) {
        return vehicles;
    }
}