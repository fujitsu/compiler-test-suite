#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i100=0 ;
    int  i101=0 ;
    int  i102=0 ;
    int  i103=0 ;
    int  idxi=1 ;
int i10 (void);
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i100)
     return 0;
    else
     i102++;
    if (i102==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i102=0;
    if (i100)
     return 0;
    else
     {
     i102++;
     }
    if (i102==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i102=1;
    if (i100)
      return 0;
    else
     if (i102)
      i102++;
     else
      i101++;
    if (i102==2 && i101==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i101=0;
    i102=1;
    if (i100)
     return 0;
    else
     switch (i102) {
      case 1 :
           i102++;
     }
    if (i102==2)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i102=0;
    if (i100)
     return 0;
    else
     while (i102<4)
     i102++;
    if (i102==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i102=0;
    if (i100)
     return 0;
    else
     for (idxi=1;  i102<4;  idxi++)
     i102++;
    if (i102==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i102=0;
    if (i100)
     return 0;
    else
     do
     i102++;
     while (i102<4);
    if (i102==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i102=0;
    if (i100)
     return 0;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto where9;
 it:
     printf("*** CATEGORY-08 *** 0     K ***\n");
 where9:
    if (i100)
     return 0;
    else
     ;
    if (idxi)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i100)
     return 0;
    else
 pass:
     i102++;
    if (i102==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i102=0;
    if (i10()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i10 (void)
 {
    int i100=0;
    if (i100)
     return 0;
    else
     return(i100);
  }
