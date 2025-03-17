#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i3 (void);
    int  i180=1 ;
    int  i181=1 ;
    int  i182=0 ;
    int  i183=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     i181++;
    if (i182==1 && i181==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     {
     i181++;
     }
    if (i182==1 && i181==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     if (i182)
      i181++;
     else
      i181++;
    if (i182==1 && i181==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     switch (i182) {
      case 1 :
           i181++;
     }
    if (i182==1 && i181==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     while (i182<4)
     i181++;
    if (i182==1 && i181==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     for (idxi=1;  i182<4;  idxi++)
     i181++;
    if (i182==1 && i181==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     do
     i182++;
     while (i182<4);
    if (i182==1 && i181==1)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     goto it;
    if (i182==1 && i181==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
     ;
    if (i182==1 && i181==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i180)
     if (i181)
      i182++;
     else
      i181++;
    else
 pass:
     i181++;
    if (i182==1 && i181==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i181=1;
    i182=0;
    if (i3()==2)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i181=0;
    i182=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i3 (void)
 {
    int  i180=1;
    int  i181=1;
    if (i180)
     if (i181)
      i181++;
     else
      i181++;
    else
     return(0);
    return(i181);
  }
