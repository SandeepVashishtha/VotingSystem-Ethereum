// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    address public owner;
    struct Poll {
        string question;
        uint yesVotes;
        uint noVotes;
        bool exists;
    }
    uint public pollsCount = 0;
    mapping(uint => Poll) public polls;
    mapping(address => mapping(uint => bool)) public votes;

    event PollCreated(uint pollId, string question);
    event Voted(uint pollId, bool vote);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action.");
        _;
    }

    function createPoll(string memory _question) public onlyOwner {
        polls[pollsCount] = Poll(_question, 0, 0, true);
        emit PollCreated(pollsCount, _question);
        pollsCount += 1;
    }

    function vote(uint _pollId, bool _vote) public {
        require(_pollId < pollsCount, "Poll does not exist.");
        require(!votes[msg.sender][_pollId], "You have already voted on this poll.");
        require(polls[_pollId].exists, "Poll does not exist.");

        Poll storage poll = polls[_pollId];
        if (_vote) {
            poll.yesVotes += 1;
        } else {
            poll.noVotes += 1;
        }
        votes[msg.sender][_pollId] = true;
        emit Voted(_pollId, _vote);
    }

    function cancelPoll(uint _pollId) public onlyOwner {
        require(polls[_pollId].exists, "Poll does not exist.");
        delete polls[_pollId];
        if (pollsCount > 0) {
            pollsCount -= 1;
        } else {
            revert("No polls to cancel.");
        }
    }
}
