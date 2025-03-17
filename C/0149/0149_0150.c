#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int c2 (void);
    int  i170=1 ;
    int  i171=0 ;
    int  i172=0 ;
    int  i173=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i170)
     {
     i171=0;
     }
    else
     i171++;
    if (i171==0)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    i171=0;
    if (i170)
     {
     i171=0;
     }
    else
     {
     i171++;
     }
    if (i171==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i171=1;
    if (i170)
     {
     i171=0;
     }
    else
     if (i171)
      i171++;
     else
      i171=0;
    if (i171==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i171=1;
    i172=0;
    if (i170)
     i171=0;
    else
     switch (i171) {
      case 1 :
           i171++;
     }
    if (i171==0)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i171=0;
    i172=0;
    i173=0;
    if (i170)
     {
     i171=1;
     }
    else
     while (i172<4)
     i172++;
    if (i172==0 && i171==1)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i171=0;
    i172=0;
    if (i170)
     {
     i171=1;
     }
    else
     for (idxi=1;  i172<4;  idxi++)
     i172++;
    if (i172==0 && i171==1)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i171=0;
    i172=0;
    idxi=0;
    if (i170)
     {
     i171=1;
     }
    else
     do
     i172++;
     while (i172<4);
    if (i172==0 && i171==1)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i171=1;
    i172=0;
    idxi=0;
    if (i170)
     {
     i171=0;
     }
    else
     goto apoint;
    if (i171==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 apoint :
     printf("*** CATEGORY-08 **** N   G ****\n");
    i171=0;
    if (i170)
     {
     i171=1;
     }
    else
     ;
    if (i171==1)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    i171=1;
    if (i170)
     {
     i171=0;
     }
    else
 that :
     i171++;
    if (i171==0)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    i171=0;
    if (c2()==2)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    i170=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
c2 (void)
 {
    int  i170=1;
    if (i170)
     {
     i170++;
     }
    else
     return(i170);
    return(i170);
 }
