#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o080=0 ;
    int  o081=0 ;
    int  o082=0 ;
    int  o083=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     do
     o080++;
     while (o080<4);
    }
    if (o080==4)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o080=0;
    {
     {
     o080++;
     }
     do
     o081++;
     while (o081<4);
    }
    if (o080==1 && o081==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o080=0;
    o081=0;
    {
     o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==1 && o081==4)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o080=1;
    o081=0;
    {
     if (o080)
      o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==2 && o081==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o080=1;
    o081=0;
    {
     switch (o080)
      case 1 :
           o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==2 && o081==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o080=0;
    o081=0;
    {
     while (o080<4)
     o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==4 && o081==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o080=0;
    o081=1;
    {
     do
     o080++;
     while (o080<4);
     do
     o081++;
     while (o081<4);
    }
    if (o080==4 && o081==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o080=0;
    o081=0;
    {
     for (idxo=1;  o080<4;  idxo++)
     o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==4 && o081==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o080=0;
    o081=0;
    {
 
     do
     o080++;
     while (o080<4);
    }
    if (o080==4)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o080=1;
    switch (o080)
    {
     case 1 :
          o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==2 && o081==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o080=0;
    o081=0;
    switch (o080)
    {
     default :
          o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==1 && o081==4)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o080=0;
    o081=0;
    {
 o8pp :
     o080++;
     do
     o081++;
     while (o081<4);
    }
    if (o080==1 && o081==4)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o080=0;
    o081=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
