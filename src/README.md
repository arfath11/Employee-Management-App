# TASK4

## FINAL CODE  

- I launched 3 container in total using this simple command  . This command replicates the app service within docker-compose file

```bash

docker compose up --scale app=3


```

- Initial output while running compoe file
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.20.43%20PM.png)
- After running the command . U can see 2 containers being created
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.20.59%20PM.png)
- The old ngnix config file by default load balances in a   ROUND ROBIN FORM .This can be confirmed by seeing the app service log
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.22.47%20PM.png)
- As u can see the load is balance between 3 containers in a round robin form  
-to see the logs i used this command

```bash

docker-compose logs -f app


```
## Improvements
- Weights can be used to load balance too .Then u need to create separate services and give them special names  in the docker compose file 
