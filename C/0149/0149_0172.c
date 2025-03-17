#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o070=0 ;
    int  o071=0 ;
    int  o072=0 ;
    int  o073=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     while (o070<4)
     o070++;
    }
    if (o070==4)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o070=0;
    {
     {
     o070++;
     }
     while (o071<4)
     o071++;
    }
    if (o070==1 && o071==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o070=0;
    o071=0;
    {
     o070++;
     while (o071<4)
     o071++;
    }
    if (o070==1 && o071 ==4)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o070=1;
    o071=0;
    {
     if (o070)
      o070++;
     while (o071<4)
     o071++;
    }
    if (o070==2 && o071==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o070=1;
    o071=0;
    {
     switch (o070)
      case 1 :
           o070++;
     while (o071<4)
     o071++;
    }
    if (o070==2 && o071==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o070=0;
    o071=0;
    {
     while (o070<4)
     o070++;
     while (o071<4)
     o071++;
    }
    if (o070==4 && o071==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o070=0;
    o071=0;
    {
     do
     o070++;
     while (o070<4);
     while (o071<4)
     o071++;
    }
    if (o070==4 && o071==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o070=0;
    o071=0;
    {
     for (idxo=1;  o070<4;  idxo++)
     o070++;
     while (o071<4)
     o071++;
    }
    if (o070==4 && o071==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o070=0;
    o071=0;
    idxo=0;
    {
 
     while (o070<4)
     o070++;
    }
    if (o070==4)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o070=1;
    switch (o070)
    {
     case 1 :
          o070++;
     while (o071<4)
     o071++;
    }
    if (o070==2 && o071==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o070=0;
    o071=0;
    switch (o070)
    {
     default :
          o070++;
     while (o071<4)
     o071++;
    }
    if (o070==1  && o071==4)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o070=0;
    o071=0;
    {
 o7pp :
     o070++;
     while (o071<4)
     o071++;
    }
    if (o070==1 &&  o071==4)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o070=0;
    o071=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
