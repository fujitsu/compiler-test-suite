#include<stdio.h>
    int  o140=1 ;
    int  o141=0 ;
    int  o142=0 ;
    int  o143=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** \n");
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
      printf("*** \n");
    else
      printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
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
     printf("*** \n");
    else
     printf("*** \n");
    o140=0;
    o141=0;
    o142=0;
   printf("*** \n");
 }
