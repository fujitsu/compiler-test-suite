#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i11 (void);
    int  i260=1 ;
    int  i261=0 ;
    int  i262=0 ;
    int  i263=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i260)
     ;
    else
     i262++;
    if (i262==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i262=0;
    if (i260)
     ;
    else
     {
     i262++;
     }
    if (i262==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i262=0;
    i263=0;
    if (i260)
      ;
    else
     if (i262)
      i262++;
     else
      i262++;
    if (i262==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i261=0;
    i262=1;
    if (i260)
     ;
    else
     switch (i262) {
      case 1 :
           i262++;
     }
    if (i262==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i262=0;
    if (i260)
     ;
    else
     while (i262<4)
     i262++;
    if (i262==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i262=0;
    if (i260)
     ;
    else
     for (idxi=1;  i262<4;  idxi++)
     i262++;
    if (i262==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i262=0;
    if (i260)
     ;
    else
     do
     i262++;
     while (i262<4);
    if (i262==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i262=0;
    if (i260)
     ;
    else
     goto it;
     printf("*** CATEGORY-08 *** 0     K ***\n");
     goto where9;
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
 where9:
    if (i260)
     ;
    else
     ;
    if (i260)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i260)
     ;
    else
 pass:
     i262++;
    if (i262==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i262=0;
    if (i11()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i262=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i11 (void)
 {
    int  i260=1;
    if (i260)
     ;
    else
     return(i260);
    return(0);
 }
