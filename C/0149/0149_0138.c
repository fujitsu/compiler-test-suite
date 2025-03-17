#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i5 (void);
    int  i050=0 ;
    int  i051=0 ;
    int  i052=0 ;
    int  i053=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i050)
     while (i051<4)
     i051++;
    else
     i052++;
    if (i052==1 && i051==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     {
     i052++;
     }
    if (i052==1 && i051==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i051=0;
    i052=1;
    if (i050)
     while (i051<4)
     i051++;
    else
     if (i052)
      i052++;
     else
      i052=0;
    if (i052==2 && i051==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i051=0;
    i052=1;
    if (i050)
     while (i051<4)
     i051++;
    else
     switch (i052) {
      case 1 :
           i052++;
     }
    if (i052==2 && i051==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     while (i052<4)
     i052++;
    if (i052==4 && i051==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     for (idxi=1;  i052<4;  idxi++)
     i052++;
    if (i052==4 && i051==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     do
     i052++;
     while (i052<4);
    if (i052==4 && i051==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
   if (i051==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
     i051=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     ;
    if (i051==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i051=0;
    if (i050)
     while (i051<4)
     i051++;
    else
 pass:
     i052++;
    if (i052==1 && i051==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i051=0;
    i052=0;
    if (i5()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i051=0;
    i052=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i5 (void)
 {
    int  i050=0;
    int  i051=0;
    if (i050)
     while (i051<4)
     i051++;
    else
     return(i051);
  }
