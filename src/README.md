# TASK7

## FINAL CODE  


![Alt text](myimages/Screenshot%202023-04-09%20at%2012.01.26%20AM.png)

- $binary_remote_addr = We will be using IP addres  for rate limiting 
- zone=req_limit = NAMING OUR ZONE AS REQ_LIMIT
- 10m = about of memory allotted to the zone . so we can store store approx 17k IPs
- rate=1r/s; = per use request should be 1 request per second(NGNIX  works with miliseconds bydefault)
- burst = 5 .  a client can make 5 request  in excess of the rate specified by the zone 
- The following errors is shown when i exceed the rate


![Alt text](myimages/Screenshot%202023-04-08%20at%207.24.34%20PM.png)
