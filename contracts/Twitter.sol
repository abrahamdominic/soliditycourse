// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter {

    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    
    mapping(address => Tweet[]) public tweets;  // Store multiple tweets for each user

    function createTweet(string memory _tweet) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);  // push new tweet to the array
    }

    function getTweet(address _owner, uint _index) public view returns (Tweet memory) {
        return tweets[_owner][_index];  // Return a specific tweet by index
    }
    
    function getAllTweets(address _owner) public view returns (Tweet[] memory) {
        return tweets[_owner];  // Return all tweets of the given address
    }
}
