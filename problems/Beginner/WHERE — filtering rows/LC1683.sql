USE problems;

Create table If Not Exists Tweets(tweet_id int, content varchar(50));
Truncate table Tweets;
insert into Tweets (tweet_id, content) values ('1', 'Let us Code');
insert into Tweets (tweet_id, content) values ('2', 'More than fifteen chars are here!');

SELECT * FROM tweets;


-- ANSWER: https://leetcode.com/problems/invalid-tweets/submissions/1998548417/

SELECT tweet_id FROM tweets
WHERE length(content) > 15;