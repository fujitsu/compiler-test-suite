#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o140=1 ;
    int  o141=0 ;
    int  o142=0 ;
    int  o143=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     switch (o140)
      {
      case 1 :
           o141++;
           break;
      case 2 :
           o142++;
           break;
      }
    }
    if (o141==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o140=1;
    o141=0;
    o142=0;
    switch (o140)
    {
     case 1 :
          o141++;
          break;
     case 2 :
          o142++;
          break;
    }
    if (o141==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o140=1;
    o141=0;
    o142=0;
    switch (o140)
    {
     default :
             o141++;
             break;
     case 1 :
             o142++;
             break;
    }
    if (o142==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o140=0;
    o141=0;
    o142=0;
    {
    switch (o140)
     {
     case 1 :
          o141++;
          break;
     default :
          o142++;
          break;
     }
    }
    if (o142)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o140=0;
    o141=0;
    o142=0;
    switch (o140)
    {
      case 1 :
           o141++;
           break;
      default :
           o142++;
           break;
    }
    if (o142==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o140=0;
    o141=0;
    o142=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
