# bookstore-api

## technologies used

-	ruby
-	rails
- mysql

## Instructions
Clone the project
```
git clone https://github.com/anupgade/bookstore-api.git
```
Install dependencies
```
bundle install
```
- create the database and table using following commands
```
$ rake db:drop
$ rake db:create
$ rake db:migrate
```
- start the rails server
```
rails s
```
- Use POSTMAN or any other client to hit the endpoints
```
http://localhost:3000/
```

Testing screenshots
<details>
  <summary>Signup</summary>
  <img width="1305" alt="Screen Shot 2022-06-05 at 3 31 50 PM" src="https://user-images.githubusercontent.com/5721135/172070212-55d42ce6-9199-4e34-a428-b7b6ee12adfa.png">
</details>
<details>
  <summary>Signup using existing email address</summary>
  <img width="1311" alt="Screen Shot 2022-06-05 at 3 33 31 PM" src="https://user-images.githubusercontent.com/5721135/172070214-e896cf1a-5ad1-43eb-815a-a919b1ed01fc.png">
</details>
<details>
  <summary>Get Users w/o authorization token</summary>
  <img width="1307" alt="Screen Shot 2022-06-05 at 3 33 58 PM" src="https://user-images.githubusercontent.com/5721135/172070218-0850807a-2dd2-4041-8cae-846f6a0bf1c8.png">
</details>
<details>
  <summary>Get all Users</summary>
  <img width="1315" alt="Screen Shot 2022-06-05 at 3 34 04 PM" src="https://user-images.githubusercontent.com/5721135/172070220-a45a0679-444b-49dc-aba1-d5267c8ae2b7.png">
</details>
<details>
  <summary>Create book</summary>
  <img width="1310" alt="Screen Shot 2022-06-05 at 3 34 11 PM" src="https://user-images.githubusercontent.com/5721135/172070221-2ad7d934-6379-44b2-905a-bf8d884e4b71.png">
</details>
<details>
  <summary>GET all books</summary>
  <img width="1307" alt="Screen Shot 2022-06-05 at 3 35 06 PM" src="https://user-images.githubusercontent.com/5721135/172070223-cb8b1620-06d6-49ca-9812-9f543feaac41.png">
</details>
<details>
  <summary>GET books using query params</summary>
  <img width="1333" alt="Screen Shot 2022-06-05 at 3 35 28 PM" src="https://user-images.githubusercontent.com/5721135/172070224-be478a1d-9ae6-414b-8ebb-23512474fe82.png">
  <img width="1313" alt="Screen Shot 2022-06-05 at 3 35 39 PM" src="https://user-images.githubusercontent.com/5721135/172070225-cfc03ef8-732b-46c1-aedc-7dd73fdde77b.png">
  <img width="1318" alt="Screen Shot 2022-06-05 at 3 35 52 PM" src="https://user-images.githubusercontent.com/5721135/172070226-e06ddada-b3af-44c4-968b-24ef7eea72bc.png">
</details>
<details>
  <summary>DELETE user</summary>
  <img width="1320" alt="Screen Shot 2022-06-05 at 3 36 20 PM" src="https://user-images.githubusercontent.com/5721135/172070227-70605559-9234-4893-aadb-01ab73ddd7db.png">
<img width="1335" alt="Screen Shot 2022-06-05 at 3 38 02 PM" src="https://user-images.githubusercontent.com/5721135/172070229-e00aef70-663f-4ef8-a258-ad73c020a1d2.png">
</details>

