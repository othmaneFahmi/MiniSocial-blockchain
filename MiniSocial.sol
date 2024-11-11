// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MiniSocial {
    struct Post {
        string message;
        address author;
        uint likes;
        uint dislikes;
        uint timestamp;
        uint lastModified;
    }

    Post[] public posts;
    mapping(uint => mapping(address => bool)) public liked;
    mapping(uint => mapping(address => bool)) public disliked;

    event PostPublished(uint postId, address author, string message, uint timestamp);
    event PostLiked(uint postId, address liker, uint newLikeCount);
    event PostDisliked(uint postId, address disliker, uint newDislikeCount);
    event PostModified(uint postId, string newMessage, uint lastModified);

    function publishPost(string memory _message) public {
        Post memory newPost = Post({
            message: _message,
            author: msg.sender,
            likes: 0,
            dislikes: 0,
            timestamp: block.timestamp,
            lastModified: block.timestamp
        });
        posts.push(newPost);
        emit PostPublished(posts.length - 1, msg.sender, _message, block.timestamp);
    }

    function likePost(uint postId) public {
        require(postId < posts.length, "Invalid postId");
        require(!liked[postId][msg.sender], "You have already liked this post");

        if (disliked[postId][msg.sender]) {
            posts[postId].dislikes -= 1;
            disliked[postId][msg.sender] = false;
        }
        posts[postId].likes += 1;
        liked[postId][msg.sender] = true;

        emit PostLiked(postId, msg.sender, posts[postId].likes);
    }

    function dislikePost(uint postId) public {
        require(postId < posts.length, "Invalid postId");
        require(!disliked[postId][msg.sender], "You have already disliked this post");

        if (liked[postId][msg.sender]) {
            posts[postId].likes -= 1;
            liked[postId][msg.sender] = false;
        }
        posts[postId].dislikes += 1;
        disliked[postId][msg.sender] = true;

        emit PostDisliked(postId, msg.sender, posts[postId].dislikes);
    }

    function modifyPost(uint postId, string memory newMessage) public {
        require(postId < posts.length, "Invalid postId");
        require(posts[postId].author == msg.sender, "Only the author can modify this post");

        posts[postId].message = newMessage;
        posts[postId].lastModified = block.timestamp;

        emit PostModified(postId, newMessage, block.timestamp);
    }

    function getPost(uint postId) public view returns (string memory, address, uint, uint, uint, uint) {
        require(postId < posts.length, "Invalid postId");
        Post memory post = posts[postId];
        return (post.message, post.author, post.likes, post.dislikes, post.timestamp, post.lastModified);
    }

    function getTotalPosts() public view returns (uint) {
        return posts.length;
    }
}
