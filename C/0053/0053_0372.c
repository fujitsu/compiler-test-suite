#include<stdio.h>
int i12 (void);
    int  i270=1 ;
    int  i271=0 ;
    int  i272=0 ;
    int  i273=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** \n");
    if (i270)
 addr1:
     i271++;
    else
     i272++;
    if (i272==0 && i271==1)
     printf("*** \n");
    else
     printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 addr2:
     i271++;
    else
     {
     i272++;
     }
    if (i272==0 && i271==1)
     printf("*** \n");
    else
     printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 test3:
     i271++;
    else
     if (i272)
      i272++;
     else
      i272++;
    if (i272==0 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=1;
    if (i270)
 addr4:
     i271++;
    else
     switch (i272) {
      case 1 :
           i272++;
     }
    if (i272==1 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 addr5:
     i271++;
    else
     while (i272<4)
     i272++;
    if (i272==0 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 addr6:
     i271++;
    else
     for (idxi=1;  i272<4;  idxi++)
     i272++;
    if (i272==0 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 addr7:
     i271++;
    else
     do
     i272++;
     while (i272<4);
    if (i272==0 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=0;
    if (i270)
 addr8:
     i271++;
    else
     goto it;
    if (i271)
     printf("*** \n");
    else
 it:
     printf("*** \n");
    i271=0;
    if (i270)
 addr9:
     i271++;
    else
     ;
    if (i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    if (i270)
 addr10:
     i271++;
    else
 pass:
     i272++;
    if (i272==0 && i271==1)
      printf("*** \n");
    else
      printf("*** \n");
    i271=0;
    i272=0;
    if (i12()==2)
      printf("*** \n");
    else
      printf("*** \n");
    i272=0;
   printf("*** \n");
 }
 int 
i12 (void)
 {
    int  i270=1;
    if (i270)
 addr11:
     i270++;
    else
     return(i270);
    return(i270);
 }
