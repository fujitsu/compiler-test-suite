#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i9 (void);
    int  i240=1 ;
    int  i241=0 ;
    int  i242=0 ;
    int  i243=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i240)
     goto where2;
    else
     i242++;
     printf("*** CATEGORY-01 **** N   G ****\n");
 where2:
    if (i242==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i242=0;
    if (i240)
     goto where3;
    else
     {
     i242++;
     }
     printf("*** CATEGORY-02 **** N   G ****\n");
  where3:
    if (i242==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i242=0;
    if (i240)
      goto where4;
    else
     if (i242)
      i242++;
     else
      i242++;
      printf("*** CATEGORY-03 **** N   G ****\n");
 where4:
    if (i242==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i242=1;
    if (i240)
     goto where5;
    else
     switch (i242) {
      case 1 :
           i242++;
     }
      printf("*** CATEGORY-04 **** N   G ****\n");
 where5:
    if (i242==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i242=0;
    if (i240)
     goto where6;
    else
     while (i242<4)
     i242++;
      printf("*** CATEGORY-05 **** N   G ****\n");
 where6:
    if (i242==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i242=0;
    if (i240)
     goto where7;
    else
     for (idxi=1;  i242<4;  idxi++)
     i242++;
      printf("*** CATEGORY-06 **** N   G ****\n");
 where7:
    if (i242==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i242=0;
    if (i240)
     goto where8;
    else
     do
     i242++;
     while (i242<4);
      printf("*** CATEGORY-07 **** N   G ****\n");
 where8:
    if (i242==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i242=0;
    if (i240)
     goto where9;
    else
     goto it;
 where9:
     printf("*** CATEGORY-08 *** 0     K ***\n");
     goto skp;
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
 skp:
    if (i240)
     goto where10;
    else
     ;
      printf("*** CATEGORY-09 **** N   G ****\n");
 where10:
    if (idxi)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i240)
     goto where11;
    else
 pass:
     i242++;
      printf("*** CATEGORY-10 **** N   G ****\n");
 where11:
    if (i242==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i242=0;
    if (i9()==1)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i242=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i9 (void)
 {
    int  i240=1;
    if (i240)
     goto where12;
    else
     return(0);
 where12:
    return(i240);
 }
