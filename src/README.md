# TASK3

## FINAL CODE  

![Alt text](myimages/Screenshot%202023-04-08%20at%2010.58.40%20PM.png)

- Added proxy service which uses the  custome image
- It depends on app
- my rev proxy image which is being built
![Alt text](myimages/Screenshot%202023-04-08%20at%2010.58.54%20PM.png)

- removed the default configurations and added my own  
![Alt text](myimages/Screenshot%202023-04-08%20at%2010.59.12%20PM.png)
- The server listens on 80 and i have done proxy pass to app container at port 3000 since the applciation is running on that specific port
- a simple dockcer compse up will turn on all the services

## Errors

- Initially my config file was like this and it threw the below error
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.00.30%20PM.png)
- THE ERROR
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.01.33%20PM.png)
- i fixed it my modifying  ngnix  config file they were

```bash

  proxy_pass http://app:3000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;


```
