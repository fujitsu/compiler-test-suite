#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o150=0 ;
    int  o151=0 ;
    int  o152=0 ;
    int  o153=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
 o1501pp :
     o150++;
    }
    if (o150==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o150=0;
    {
     {
     o150++;
     }
 o1502pp :
     o150++;
    }
    if (o150==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o150=0;
    {
     o150++;
 o1503pp:
     o150++;
    }
    if (o150==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o150=1;
    {
     if (o150)
      o151++;
 o1504pp :
     o151++;
    }
    if (o151==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o150=1;
    o151=0;
    {
     switch (o150)
      case 1 :
           o151++;
 o1505pp :
     o151++;
    }
    if (o151==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o150=0;
    o151=0;
    {
     while (o150<4)
     o150++;
 o1506pp :
     o150++;
    }
    if (o150==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o150=0;
    {
     do
     o150++;
     while (o150<4);
 o1507pp :
     o150++;
    }
    if (o150==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o150=0;
    {
     for (idxo=1;  o150<4;  idxo++)
     o150++;
 o1508pp :
     o150++;
    }
    if (o150==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o150=0;
    idxo=0;
    {
 
 o1509pp :
     o150++;
    }
    if (o150==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o150=1;
    switch (o150)
    {
     case 1 :
          o151++;
 o1510pp :
     o151++;
    }
    if (o151==2)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o150=0;
    o151=0;
    switch (o150)
    {
     default :
          o151++;
 o1511pp :
     o151++;
    }
    if (o151==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o150=0;
    o151=0;
    {
 o15pp :
     o150++;
 o1512pp:
     o150++;
    }
    if (o150==2)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o150=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
