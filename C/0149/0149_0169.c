#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o040=0 ;
    int  o041=0 ;
    int  o042=0 ;
    int  o043=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     o040++;
    }
    if (o040==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o040=0;
    {
     {
     o040++;
     }
     o040++;
    }
    if (o040==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o040=0;
    {
     o040++;
     o040++;
    }
    if (o040==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o040=1;
    {
     if (o040)
      o041++;
     o041++;
    }
    if (o041==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o040=1;
    o041=0;
    {
     switch (o040)
      case 1 :
           o041++;
     o041++;
    }
    if (o041==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o040=0;
    o041=0;
    {
     while (o040<4)
     o040++;
     o040++;
    }
    if (o040==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o040=0;
    {
     do
     o040++;
     while (o040<4);
     o040++;
    }
    if (o040==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o040=0;
    {
     for (idxo=1;  o040<4;  idxo++)
     o040++;
     o040++;
    }
    if (o040==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o040=0;
    idxo=0;
    {
 
     o040++;
    }
    if (o040==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o040=1;
    switch (o040)
    {
     case 1 :
          o041++;
     o041++;
    }
    if (o041==2)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o040=0;
    o041=0;
    switch (o040)
    {
     default :
          o041++;
     o041++;
    }
    if (o041==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o040=0;
    o041=0;
    {
 o4pp :
     o040++;
     o040++;
    }
    if (o040==2)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o040=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
