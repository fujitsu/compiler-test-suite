#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i3 (void);
    int  i030=0 ;
    int  i031=0 ;
    int  i032=0 ;
    int  i033=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     i032++;
    if (i032==1 && i031==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     {
     i032++;
     }
    if (i032==1 && i031==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i031=0;
    i032=1;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     if (i032)
      i032++;
     else
      i031++;
    if (i032==2 && i031==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i031=0;
    i032=1;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     switch (i032) {
      case 1 :
           i032++;
     }
    if (i032==2 && i031==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     while (i032<4)
     i032++;
    if (i032==4 && i031==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     for (idxi=1;  i032<4;  idxi++)
     i032++;
    if (i032==4 && i031==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     do
     i032++;
     while (i032<4);
    if (i032==4 && i031==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
    if (i031==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
    i031=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     ;
    if (i031==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i031=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
 pass:
     i032++;
    if (i032==1 && i031==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i031=0;
    i032=0;
    if (i3()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i031=0;
    i032=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i3 (void)
 {
    int  i030=0;
    int  i031=0;
    if (i030)
     if (i031)
      i031++;
     else
      i031++;
    else
     return(i031);
  }
