# TASK1

## FINAL CODE  

 ![hi](myimages/Screenshot%202023-04-08%20at%208.56.29%20PM.png)

- Made  sure to use 3.0.5 based ruby image
- adding Gemfile before  the entire source code becoz to optimize Caching image layers . As later changes will be done more in the src folder so we need that layer in the end .In this way we can use the previous cached layers this makes building the image much faster
- Once a layer is changed all the following layer recreate as well  .
- Runing the surver with bundle exec rails command  .
- 0.0.0.0 signifies to bind with any avalibale  ip address
- First build ur image and then run the container  . We are maping port 3000 of our host to the container using publish option as  our applications runs on that port 

```bash

 docker run -it -p 3000:3000 --name con1 <image name>       


```

## Failed images

- I tried to optimise the size of image by using alpine  images
 ![Alt text](myimages/Screenshot%202023-04-01%20at%2010.04.30%20PM.png)
- I got this error . If iT was succes then the Iamge size would have reduced tfrom 1G to 450 mb I believe this is due to some  specific dependencies which i am supposed to instal in alpine
   ![Alt text](myimages/Screenshot%202023-04-08%20at%209.20.13%20PM.png)
- I though of using multistage build to optimize the size but it didnt make a big difference  only few MB was reduced .

## Drawbacks

- The current image size is 1GB  which is not recommanded i will try to improve this by identifiying the right commands to be used in alpine based image
- Multistage build is missing (Though i would do it in the end if i had enough time )

- also i havnt done data migration within my docker file .I wasnt sure if  it was the best way to do so .In the upcoming task u  will see how i did data migration
