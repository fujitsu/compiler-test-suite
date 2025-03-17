#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i1 (void);
    int  i010=1 ;
    int  i011=0 ;
    int  i012=0 ;
    int  idxi=0 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i010)
     {
     i011++;
     }
    if (i011==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    i011=0;
    if (i010)
     if (i010)
      i011++;
     else
      i011=0;
    if (i011==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i011=1;
    if (i010)
     switch (i011) {
      case 1 :
           i011++;
     }
    if (i011==2)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    i011=0;
    if (i010)
     while (i011<4)
     i011++;
    if (i011==4)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i011=0;
    if (i010)
     for (idxi=1;  i011<4;  idxi++)
     i011++;
    if (i011==4)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i011=0;
    idxi=0;
    if (i010)
     i011++;
    if (i011==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i011=0;
    if (i010)
     do
     i011++;
     while (i011<4);
    if (i011==4)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i011=0;
    if (i010)
     goto apoint;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto bpoint;
 apoint :
     printf("*** CATEGORY-08 *** 0     K ***\n");
 bpoint :
    if (i010)
     ;
    if (idxi==0)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    if (i010)
 this:
     i011++;
    if (i011==1)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    i011=0;
    if (i1()==1)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i1 (void)
 {
    int  i010=1;
    if (i010)
     return(i010);
 }
