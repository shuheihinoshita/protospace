#DB設計


##User

###association
has_many :protos
has_many :likes
has_many :comments

###columns
id :string
name :string
email :string
password :string
avatar :string
team :string
profile :text
works :string


##Proto

###association
has_many :Images
has_many :likes
has_many :comments
has_many :protos_tags
has_many :tags, through: :protos_tags
belongs_to :user

###columns
id :integer
user_id :integer
title :text
catchcopy :text
concept :text


##Image

###association
belongs_to :proto

###columns
id :integer
proto_id :integer
image_url :string


##Tag

###association
has_many :protos_tags
has_many :protos, through: :protos_tags

###columns
id :integer
tagname :string


##ProtosTag

###association
belongs_to :proto
belongs_to :tag

###columns
id :integer
proto_id :integer
tag_id :integer


##Comment

###association
belongs_to :user
belongs_to :proto

###columns
id :integer
user_id :integer
proto_id :integer
message :text


##Like

###association
belongs_to :user
belongs_to :proto

###columns
id :integer
user_id :integer
prototype_id :integer

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