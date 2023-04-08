# TASK5

## FINAL CODE  


![Alt text](myimages/Screenshot%202023-04-08%20at%2011.36.14%20PM.png)

- I used volumes over bind mounts for this specifi reason 
 
 1. With Bind, you have 2 technologies to take care of. Your host machine directory structure as well as Docker.
 2. Migration of Volumes are easier not only on local machines but on cloud machines as well.
 3. Volumes are managed by docker itself 

- The flag external: false  tells that we havnt created the volume on our host  .if its true it measn we have already created the volume and we are asking docker to use tht particular volume  .


## Error
- unable to access the volume .As u can see the location of volume but i tried to acces this location n i am unable to 
![Alt text](myimages/Screenshot%202023-04-08%20at%205.38.08%20PM.png)

- The error 
![Alt text](myimages/Screenshot%202023-04-08%20at%2011.41.45%20PM.png)




- When i use external: True in the dockericompose file and make aa volume on my host and try to acces the  site i got the following error which i was not able to fix 
![Alt text](myimages/Screenshot%202023-04-08%20at%204.31.52%20PM.png)
