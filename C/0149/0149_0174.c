#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  o090=0 ;
    int  o091=0 ;
    int  o092=0 ;
    int  o093=0 ;
    int  idxo=0 ;
int main()
  {
  printf("*** CATEGORY ** TEST FOR COMPOUND ** STARTED ***\n");
    {
     ;
     for (idxo=1;  o090<4;  idxo++)
     o090++;
    }
    if (o090==4)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    o090=0;
    {
     {
     o090++;
     }
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==1 && o091==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    o090=0;
    o091=0;
    {
     o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==1 && o091==4)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    o090=1;
    o091=0;
    {
     if (o090)
      o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==2 && o091==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    o090=1;
    o091=0;
    {
     switch (o090)
      case 1 :
           o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==2 && o091==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    o090=0;
    o091=0;
    {
     while (o090<4)
     o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==4 && o091==4)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    o090=0;
    o091=0;
    {
     do
     o090++;
     while (o090<4);
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==4 && o091==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    o090=0;
    o091=0;
    {
     for (idxo=1;  o090<4;  idxo++)
     o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==4 && o091==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
    o090=0;
    o091=0;
    {
 
     for (idxo=1;  o090<4;  idxo++)
     o090++;
    }
    if (o090==4)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    o090=1;
    switch (o090)
    {
     case 1 :
          o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==2 && o091==4)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    o090=0;
    o091=0;
    switch (o090)
    {
     default :
             o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090=1 && o091==4)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    o090=0;
    o091=0;
    {
 o9pp :
     o090++;
     for (idxo=1;  o091<4;  idxo++)
     o091++;
    }
    if (o090==1 && o091==4)
     printf("*** CATEGORY-12 *** 0     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    o090=0;
    o091=0;
   printf("*** CATEGORY ** TEST FOR -COMPOUND- ** ENDED ***\n");
exit (0);
 }
