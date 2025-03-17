#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o030=0 ;
    int  o031=0 ;
    int  o032=0 ;
    int  o033=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     {
     o030++;
     }
    }
    if (o030==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o030=0;
    {
     {
     o030++;
     }
     {
     o030++;
     }
    }
    if (o030==2)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o030=0;
    {
     o030++;
     {
     o030++;
     }
    }
    if (o030==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o030=1;
    {
     if (o030)
      o031++;
     {
     o031++;
     }
    }
    if (o031==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o030=1;
    o031=0;
    {
     switch (o030)
      case 1 :
           o031++;
     {
     o031++;
     }
    }
    if (o031==2)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o030=0;
    o031=0;
    {
     while (o030<4)
     o030++;
     {
     o030++;
     }
    }
    if (o030==5)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o030=0;
    {
     do
     o030++;
     while (o030<4);
     {
     o030++;
     }
    }
    if (o030==5)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o030=0;
    {
     for (idxo=1;  o030<4;  idxo++)
     o030++;
     {
     o030++;
     }
    }
    if (o030==5)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o030=0;
    idxo=0;
    {
 
     {
     o030++;
     }
    }
    if (o030==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o030=1;
    switch (o030)
    {
     case 1 :
          o031++;
     {
     o031++;
     }
    }
    if (o031==2)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o030=0;
    o031=0;
    switch (o030)
    {
     default :
          o031++;
     {
     o031++;
     }
    }
    if (o031==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o030=0;
    o031=0;
    {
 o3pp :
     o030++;
     {
     o030++;
     }
    }
    if (o030==2)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o030=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
