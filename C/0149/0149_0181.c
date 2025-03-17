#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int fo1612 (void);
    int  o160=0 ;
    int  o161=0 ;
    int  o162=0 ;
    int  o163=0 ;
    int  idxo=0 ;
int 
main (void)
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
   {
    {
     ;
     {
     o160++;
     }
    }
   }
    if (o160==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o160=0;
   {
    {
     {
     o160++;
     }
     {
     o160++;
     }
    }
   }
    if (o160==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o160=0;
   {
    {
     o160++;
     {
     o160++;
     }
    }
   }
    if (o160==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o160=1;
   {
    {
     if (o160)
      o161++;
     {
     o161++;
     }
    }
   }
    if (o161==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o160=1;
    o161=0;
   {
    {
     switch (o160)
      case 1 :
           o161++;
     {
     o161++;
     }
    }
   }
    if (o161==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o160=0;
    o161=0;
   {
    {
     while (o160<4)
     o160++;
     {
     o160++;
     }
    }
   }
    if (o160==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o160=0;
   {
    {
     do
     o160++;
     while (o160<4);
     {
     o160++;
     }
    }
   }
    if (o160==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o160=0;
   {
    {
     for (idxo=1;  o160<4;  idxo++)
     o160++;
     {
     o160++;
     }
    }
   }
    if (o160==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o160=0;
    idxo=0;
   {
    {
     {
     o160++;
     }
     goto o1609pp;
    }
   }
     printf("*** CATEGORY-09 **** N   G ****\n");
    goto o1609skp;
 o1609pp :
     printf("*** CATEGORY-09 *** 0     K ***\n");
 o1609skp :
    o160=0;
   for (idxo=1;  o160<4;  idxo++)
   {
    {
     {
     o160++;
     }
     continue;
    }
   }
    if (o160==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o160=0;
    idxo=0;
   for (idxo=1;  o160<4;  idxo++)
   {
    {
     {
     o160++;
     }
     break;
    }
   }
    if (o160==1)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o160=0;
    idxo=0;
    if (fo1612()==1)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
   {
    {
 
     {
     o160++;
     }
    }
   }
    if (o160==1)
     printf("*** CATEGORY-13 *** 0     K ***\n");
    else
     printf("*** CATEGORY-13 **** N   G ****\n");
    o160=1;
   {
    switch (o160)
    {
     case 1 :
          o161++;
     {
     o161++;
     }
    }
   }
    if (o161==2)
     printf("*** CATEGORY-14 *** 0     K ***\n");
    else
     printf("*** CATEGORY-14 **** N   G ****\n");
    o160=0;
    o161=0;
   {
    switch (o160)
    {
     default :
          o161++;
     {
     o161++;
     }
    }
   }
    if (o161==2)
     printf("*** CATEGORY-15 *** 0     K ***\n");
    else
     printf("*** CATEGORY-15 **** N   G ****\n");
    o160=0;
    o161=0;
   {
    {
 o16pp :
     o160++;
     {
     o160++;
     }
    }
   }
    if (o160==2)
     printf("*** CATEGORY-16 *** 0     K ***\n");
    else
     printf("*** CATEGORY-16 **** N   G ****\n");
    o160=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
 int 
fo1612 (void)
 {
   int  o160=0;
   {
    {
     {
     o160++;
     }
     return(o160);
    }
   }
 }
