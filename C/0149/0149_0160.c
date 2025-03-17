#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i12 (void);
    int  i270=1 ;
    int  i271=0 ;
    int  i272=0 ;
    int  i273=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** MSESTI12 ** TEST FOR -IF- ** STARTED ***\n");
    if (i270)
 addr1:
     i271++;
    else
     i272++;
    if (i272==0 && i271==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
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
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
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
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
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
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i271=0;
    i272=0;
    if (i270)
 addr5:
     i271++;
    else
     while (i272<4)
     i272++;
    if (i272==0 && i271==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i271=0;
    i272=0;
    if (i270)
 addr6:
     i271++;
    else
     for (idxi=1;  i272<4;  idxi++)
     i272++;
    if (i272==0 && i271==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
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
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i271=0;
    i272=0;
    if (i270)
 addr8:
     i271++;
    else
     goto it;
    if (i271)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
    i271=0;
    if (i270)
 addr9:
     i271++;
    else
     ;
    if (i271==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i271=0;
    if (i270)
 addr10:
     i271++;
    else
 pass:
     i272++;
    if (i272==0 && i271==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i271=0;
    i272=0;
    if (i12()==2)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i272=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
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
