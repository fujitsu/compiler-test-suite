#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o060=1 ;
    int  o061=0 ;
    int  o062=0 ;
    int  o063=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o060=0;
    {
     {
     o060++;
     }
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o060=0;
    {
     o060++;
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o060=1;
    {
     if (o060)
      o061++;
     switch (o061)
      case 1 :
           o061++;
    }
    if (o061==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o060=1;
    o061=0;
    {
     switch (o060)
      case 1 :
           o061++;
     switch (o061)
      case 1 :
           o061++;
    }
    if (o061==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o060=0;
    o061=1;
    {
     while (o060<4)
     o060++;
     switch (o060)
      case 4 :
           o060++;
    }
    if (o060==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o060=0;
    o061=1;
    {
     do
     o060++;
     while (o060<4);
     switch (o061)
      case 1 :
           o060++;
    }
    if (o060==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o060=0;
    o061=1;
    {
     for (idxo=1;  o060<4;  idxo++)
     o060++;
     switch (o060)
      case 4 :
           o060++;
    }
    if (o060==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o060=1;
    idxo=0;
    {
 
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o060=1;
    switch (o060)
    {
     case 1 :
          o060++;
     switch (o060)
      case 2 :
           o060++;
    }
    if (o060==3)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o060=0;
    switch (o060)
    {
     default :
          o060++;
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o060=0;
    {
 o6pp :
     o060++;
     switch (o060)
      case 1 :
           o060++;
    }
    if (o060==2)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o060=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
