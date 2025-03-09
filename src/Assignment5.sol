// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
uint public counter;
bool public isActive;
mapping(address => string) public userNames;
struct User {
        uint id;
        string name;
        address userAddress;
    }
User[] public users;

    // 1. Declare a public unsigned integer variable called `counter`

    // 2. Declare a public boolean variable called `isActive`

    // 3. Create a public mapping from an address to a string called `userNames`

    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)

    // 5. Create a public array of `User` called `users`

    // Constructor
    // Initialize `isActive` to true
    constructor() {
        isActive = true;
        // Fill in the logic

    }

    // Function to increment the counter
    // This function should:
    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() external{
        for (uint256 i = 0; i < 5; i++) {
            counter += 1;
            }
        // Fill in the logic
      
    }

    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
       
        if (isActive == true) {
            isActive = false;
            } else {
                isActive = true;
                }
        // Fill in the logic
        
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint) and `name` (string) and userAddress (address)
        // Hint: Define string as `string memory`
        // The memory keyword will be explained later
    // - Add a new user to the `users` array
    // - Update the `userNames` mapping with the address and name


    function addUser(uint id, string memory name, address userAddress) public {
    
    User memory newUser = User(id, name, userAddress);
    users.push(newUser);
    userNames[userAddress] = name;    


        // Fill in the logic

        // Hint: you have to use the keyword `memory` to define the struct
            // For example: User memory user
            // This keyword will be explained later

    }

    // Function to get the total number of users
    // This function should:
    // - Be public and view
    // - Return the length of the `users` array

    function getUserCount() public view returns (uint) {
        // Fill in the logic
    return users.length;
    }

}