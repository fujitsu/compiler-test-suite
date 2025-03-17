#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i9 (void);
    int  i090=0 ;
    int  i091=0 ;
    int  i092=0 ;
    int  i093=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i090)
     goto where2;
    else
     i092++;
    if (i092==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
 where2:
     printf("*** CATEGORY-01 **** N   G ****\n");
    i092=0;
    if (i090)
     goto where3;
    else
     {
     i092++;
     }
    if (i092==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
  where3:
     printf("*** CATEGORY-02 **** N   G ****\n");
    i092=1;
    if (i090)
      goto where4;
    else
     if (i092)
      i092++;
     else
      i091++;
    if (i092==2 && i091==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
 where4:
      printf("*** CATEGORY-03 **** N   G ****\n");
    i091=0;
    i092=1;
    if (i090)
     goto where5;
    else
     switch (i092) {
      case 1 :
           i092++;
     }
    if (i092==2)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
 where5:
      printf("*** CATEGORY-04 **** N   G ****\n");
    i092=0;
    if (i090)
     goto where6;
    else
     while (i092<4)
     i092++;
    if (i092==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
 where6:
      printf("*** CATEGORY-05 **** N   G ****\n");
    i092=0;
    if (i090)
     goto where7;
    else
     for (idxi=1;  i092<4;  idxi++)
     i092++;
    if (i092==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
 where7:
      printf("*** CATEGORY-06 **** N   G ****\n");
    i092=0;
    if (i090)
     goto where8;
    else
     do
     i092++;
     while (i092<4);
    if (i092==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
 where8:
      printf("*** CATEGORY-07 **** N   G ****\n");
    i092=0;
    if (i090)
     goto where9;
    else
     goto it;
 where9:
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto skp;
 it:
     printf("*** CATEGORY-08 *** 0     K ***\n");
 skp:
    if (i090)
     goto where10;
    else
     ;
    if (idxi)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
 where10:
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i090)
     goto where11;
    else
 pass:
     i092++;
    if (i092==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
 where11:
      printf("*** CATEGORY-10 **** N   G ****\n");
    i092=0;
    if (i9()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i092=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i9 (void)
 {
    int  i090=0;
    if (i090)
     goto where12;
    else
     return(i090);
 where12:
   ;
 }
