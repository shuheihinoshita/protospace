#DB設計


##User

###association
has_many :prototypes
has_many :likes
has_many :comments

###columns
name :string
email :string
password :string
avatar :string
team :string
profile :text
works :string


##prototype

###association
has_many :Images
has_many :likes
has_many :comments
belongs_to :user

###columns
user_id :integer
title :text
catch_copy :text
concept :text


##Image

###association
belongs_to :prototype

###columns
prototype_id :integer
content :string


##Comment

###association
belongs_to :user
belongs_to :prototype

###columns
user_id :integer
prototype_id :integer
message :text


<!-- ##Like

###association
belongs_to :user
belongs_to :prototype

###columns
id :integer
user_id :integer
prototype_id :integer -->



<!-- ## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
