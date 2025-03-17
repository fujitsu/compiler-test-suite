#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i7 (void);
    int  i070=0 ;
    int  i071=0 ;
    int  i072=0 ;
    int  i073=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i070)
     i071++;
    else
     i072++;
    if (i072==1 && i071==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     {
     i072++;
     }
    if (i072==1 && i071==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i071=0;
    i072=1;
    if (i070)
      i071++;
    else
     if (i072)
      i072++;
     else
      i071++;
    if (i072==2 && i071==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i071=0;
    i072=1;
    if (i070)
     i071++;
    else
     switch (i072) {
      case 1 :
           i072++;
     }
    if (i072==2 && i071==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     while (i072<4)
     i072++;
    if (i072==4 && i071==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     for (idxi=1;  i072<4;  idxi++)
     i072++;
    if (i072==4 && i071==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     do
     i072++;
     while (i072<4);
    if (i072==4 && i071==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i070)
     i071++;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
    if (i071==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
     i071=0;
    if (i070)
     i071++;
    else
     ;
    if (i071==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i071=0;
    if (i070)
     i071++;
    else
 pass:
     i072++;
    if (i072==1 && i071==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i071=0;
    i072=0;
    if (i7()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i071=0;
    i072=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i7 (void)
 {
    int i070=0;
    int i071=0;
    if (i070)
     i071++;
    else
     return(i071);
 }
