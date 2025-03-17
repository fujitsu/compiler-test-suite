#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int fo112 (void);
    int  o010=1 ;
    int  o011=0 ;
    int  o012=0 ;
    int  o013=0 ;
    int  idxo=0 ;
int 
main (void)
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
 
    }
    if (o010==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o010=0;
    {
     {
     o010++;
     }
 
    }
    if (o010==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o010=0;
    {
     o010++;
 
    }
    if (o010==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o010=1;
    {
     if (o010)
      o011++;
 
    }
    if (o011==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o010=1;
    o011=0;
    {
     switch (o010)
      case 1 :
           o011++;
 
    }
    if (o011==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o010=0;
    o011=0;
    {
     while (o010<4)
     o010++;
 
    }
    if (o010==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o010=0;
    {
     do
     o010++;
     while (o010<4);
 
    }
    if (o010==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o010=0;
    {
     for (idxo=1;  o010<4;  idxo++)
     o010++;
 
    }
    if (o010==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o010=0;
    idxo=0;
    {
     goto o1p;
 
    }
     printf("*** CATEGORY-09 **** N   G ****\n");
     goto o1pe;
 o1p:
     printf("*** CATEGORY-09 *** O     K ***\n");
 o1pe:
    o010=1;
    for (idxo=1;  idxo<4;  idxo++)
    {
     continue;
 
    }
    if (idxo==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o010=1;
    idxo=0;
    for (idxo=1;  o010<4;  idxo++)
    {
     break;
 
    }
    if (o010==1)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o010=0;
    if (fo112()==1)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o010=1;
    {
 
 
    }
    if (o010==1)
     printf("*** CATEGORY-13 *** 0     K ***\n");
    else
     printf("*** CATEGORY-13 **** N   G ****\n");
    o010=1;
    switch (o010)
    {
     case 1 :
          o011++;
 
    }
    if (o011==1)
     printf("*** CATEGORY-14 *** 0     K ***\n");
    else
     printf("*** CATEGORY-14 **** N   G ****\n");
    o010=0;
    o011=0;
    switch (o010)
    {
     default :
          o011++;
 
    }
    if (o011==1)
     printf("*** CATEGORY-15 *** 0     K ***\n");
    else
     printf("*** CATEGORY-15 **** N   G ****\n");
    o010=0;
    o011=0;
    {
 o1pp :
     o010++;
 
    }
    if (o010==1)
     printf("*** CATEGORY-16 *** 0     K ***\n");
    else
     printf("*** CATEGORY-16 **** N   G ****\n");
    o010=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
 int 
fo112 (void)
 {
    {
     return(1);
 
    }
 }
