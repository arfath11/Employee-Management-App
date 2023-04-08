# TASK2

## FINAL CODE  

 ![Alt text](myimages/Screenshot%202023-04-08%20at%2010.02.02%20PM.png)

- I used docker compose to   build and start the containers as it was easier then individually creating them and linking
- I have used mysql image from dockerhub its prebuilt . For app i am using custome image which i have build in my previous task
- i am using version 3.8 as it enable me to us depends on feature and also network feature in the docker compose file .
- i am mapping the port 8080 to 3000 of the app service the website willl be accssiable at <http://0.0.0.0:8080/>
- I have created the neccessary environment variable as the mysql image demands  credentials to verify . i am passing these using environment variable  
- I also realised that passing user name and password this way is not the recommanded way insetead we can use new feature called secrets  to pass the credentials .Currently i didnt use tht method
- Modified database.yml to read the evnironment variables too
![Alt text](myimages/Screenshot%202023-04-08%20at%2010.11.57%20PM.png)
- The app depends on db service therefore thiis will start db before app .This is a way to form links between the container . both the containers can acces each other just by using the service name
- i dont need to manually link them as in mysql image  bydefault the port 3306 is exposed the app service can connect to db container just by using its name
- added .dockerignore file tooo 
![Alt text](myimages/Screenshot%202023-04-08%20at%2010.25.52%20PM.png)

- Finally i can acces the website  
![Alt text](myimages/Screenshot%202023-04-08%20at%2010.05.00%20PM.png)



## Errors

- The first time when u access the site u get this error .

![Alt text](myimages/Screenshot%202023-04-08%20at%2010.02.28%20PM.png)
- I did the data migration using this command  
```bash

docker-compose run --rm app rails db:migrate


```

## Drawbacks

- Unprofessional way of passing the credentials . I should be using .env or secrets to pass the password

