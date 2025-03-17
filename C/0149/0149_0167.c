#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o020=1 ;
    int  o021=0 ;
    int  o022=0 ;
    int  o023=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     ;
    }
    if (o020==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o020=0;
    {
     {
     o020++;
     }
     ;
    }
    if (o020==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o020=0;
    {
     o020++;
     ;
    }
    if (o020==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o020=1;
    {
     if (o020)
      o021++;
     ;
    }
    if (o021==1)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o020=1;
    o021=0;
    {
     switch (o020)
      case 1 :
           o021++;
     ;
    }
    if (o021==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o020=0;
    o021=0;
    {
     while (o020<4)
     o020++;
     ;
    }
    if (o020==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o020=0;
    {
     do
     o020++;
     while (o020<4);
     ;
    }
    if (o020==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o020=0;
    {
     for (idxo=1;  o020<4;  idxo++)
     o020++;
     ;
    }
    if (o020==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o020=1;
    idxo=0;
    {
 
     ;
    }
    if (o020==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o020=1;
    switch (o020)
    {
     case 1 :
          o021++;
     ;
    }
    if (o021==1)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o020=0;
    o021=0;
    switch (o020)
    {
     default :
          o021++;
     ;
    }
    if (o021==1)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o020=0;
    o021=0;
    {
 o2pp :
     o020++;
     ;
    }
    if (o020==1)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o020=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
