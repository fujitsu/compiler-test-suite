#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o050=1 ;
    int  o051=0 ;
    int  o052=0 ;
    int  o053=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     if (o050)
     o051++;
    }
    if (o051==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o050=0;
    o051=0;
    {
     {
     o050++;
     }
     if (o050)
     o050++;
    }
    if (o050==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o050=0;
    {
     o050++;
     if (o050)
     o050++;
    }
    if (o050==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o050=1;
    {
     if (o050)
      o050++;
     if (o050)
      o050++;
    }
    if (o050==3)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o050=1;
    {
     switch (o050)
      case 1 :
           o051++;
     if (o051)
      o051++;
    }
    if (o051==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o050=0;
    o051=0;
    {
     while (o050<4)
     o050++;
     if (o050)
      o050++;
    }
    if (o050==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o050=0;
    {
     do
     o050++;
     while (o050<4);
     if (o050)
      o050++;
    }
    if (o050==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o050=0;
    {
     for (idxo=1;  o050<4;  idxo++)
     o050++;
     if (o050)
      o050++;
    }
    if (o050==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o050=1;
    idxo=0;
    {
 
     if (o050)
      o050++;
    }
    if (o050==2)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o050=1;
    switch (o050)
    {
     case 1 :
          o051++;
     if (o051)
      o051++;
    }
    if (o051==2)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o050=0;
    o051=0;
    o052=0;
    switch (o050)
    {
     default :
          o051++;
     if (o051)
      o051++;
    }
    if (o051==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o050=0;
    o051=0;
    {
 o5pp :
     o050++;
     if (o050)
      o050++;
    }
    if (o050==2)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o050=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
