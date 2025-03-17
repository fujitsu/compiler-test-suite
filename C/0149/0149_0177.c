#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o120=0 ;
    int  o121=0 ;
    int  o122=0 ;
    int  o123=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    for (idxo=1;   o120<4;  idxo++)
    {
     ;
     break;
    }
    if (o120==0)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o120=0;
    for (idxo=1;   o120<4;  idxo++)
    {
     {
     o120++;
     }
     break;
    }
    if (o120==1)
      printf("*** CATEGORY-02 *** 0     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
     o120=0;
    for (idxo=1;   o120<4;  idxo++)
    {
     o120++;
     break;
    }
    if (o120==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    o120=1;
    o121=0;
    for (idxo=1;   o121<4;  idxo++)
    {
     if (o120)
      o121++;
     break;
    }
    if (o121==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    o120=1;
    o121=0;
    for (idxo=1;   o121<4;  idxo++)
    {
     switch (o120)
      case 1 :
           o121++;
     break;
    }
    if (o121==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    o120=0;
    o121=0;
    for (idxo=1;   o120<4;  idxo++)
    {
     while (o120<4)
     o120++;
     break;
    }
    if (o120==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    o120=0;
    for (idxo=1;   o120<4;  idxo++)
    {
     do
     o120++;
     while (o120<4);
     break;
    }
    if (o120==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    o120=0;
    for (idxo=1;   o120<4;  idxo++)
    {
     for (idxo=1;  o120<4;  idxo++)
     o120++;
     break;
    }
    if (o120==4)
      printf("*** CATEGORY-08 *** 0     K ***\n");
    else
      printf("*** CATEGORY-08 **** N   G ****\n");
    o120=1;
    for (idxo=1;   o120<4;  idxo++)
    {
 
     break;
    }
    if (o120==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    o120=1;
    idxo=0;
    for (idxo=1;   o121<4;  idxo++)
    switch (o120)
    {
     case 1 :
          o121++;
     break;
    }
    if (o121==4)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    o120=0;
    o121=0;
    for (idxo=1;   o121<4;  idxo++)
    switch (o120)
    {
     default :
          o121++;
     break;
    }
    if (o121==4)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    o120=0;
    o121=0;
    for (idxo=1;   o120<4;  idxo++)
    {
 o12pp :
     o120++;
     break;
    }
    if (o120==1)
      printf("*** CATEGORY-12 *** 0     K ***\n");
    else
      printf("*** CATEGORY-12 **** N   G ****\n");
    o120=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
