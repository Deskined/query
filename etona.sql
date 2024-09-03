-- Task 1: Select all users who are born between January 1, 2000, and December 31, 2004.
SELECT *
FROM Users
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

-- Task 2: Select all the posts written by the user with a user_id of 4.
SELECT *
FROM Posts
WHERE PostedBy = 4;

-- Task 3: Select all the group names existing in the database.
SELECT GroupName
FROM Groups;

-- Task 4: Select all the group membership requests made by the user with a user_id of 2.
SELECT *
FROM GroupMembershipRequests
WHERE GroupMemberUserID = 2;

-- Task 5: Select all the friends of the user with a user_id of 2.
SELECT u.*
FROM Friends f
JOIN Users u ON u.UserID = f.FriendBeingAdded
WHERE f.FriendWhoAdded = 2 AND f.IsAccepted = TRUE
UNION
SELECT u.*
FROM Friends f
JOIN Users u ON u.UserID = f.FriendWhoAdded
WHERE f.FriendBeingAdded = 2 AND f.IsAccepted = TRUE;

-- Task 6: Select all the friend requests that user with a user_id of 1 has sent. The friend request can either be accepted or not yet accepted.
SELECT *
FROM Friends
WHERE FriendWhoAdded = 1;

-- Task 7: Select all the posts visible only for the group with a group_id of 2.
SELECT *
FROM Posts
WHERE GroupID = 2 AND IsOnlyForFriends = TRUE;

-- Task 8: Select all the group membership requests from the group with a group_id of 2 that are not yet accepted.
SELECT *
FROM GroupMembershipRequests
WHERE GroupID = 2 AND IsGroupMemberShipAccepted = FALSE;
