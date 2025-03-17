#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i160=0 ;
    int  i161=0 ;
    int  i162=0 ;
    int  idxi=0 ;
int i1 (void);
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i160)
     {
     i161++;
     }
    if (i161==0)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    i161=0;
    if (i160)
     if (i160)
      i161++;
     else
      i161=0;
    if (i161==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i161=1;
    if (i160)
     switch (i161) {
      case 1 :
           i161++;
     }
    if (i161==1)
     printf("*** CATEGORY-03 *** 0     K ***\n");
    else
     printf("*** CATEGORY-03 **** N   G ****\n");
    i161=0;
    if (i160)
     while (i161<4)
     i161++;
    if (i161==0)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i161=0;
    if (i160)
     for (idxi=1;  i161<4;  idxi++)
     i161++;
    if (i161==0)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i161=0;
    idxi=0;
    if (i160)
     i161++;
    if (i161==0)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i161=0;
    if (i160)
     do
     i161++;
     while (i161<4);
    if (i161==0)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i161=0;
    if (i160)
     goto apoint;
     printf("*** CATEGORY-08 *** 0     K ***\n");
     goto bpoint;
 apoint :
     printf("*** CATEGORY-08 **** N   G ****\n");
 bpoint :
    if (i160)
     ;
    if (idxi==0)
     printf("*** CATEGORY-09 *** O     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    if (i160)
 this:
     i161++;
    if (i161==0)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    i161=0;
    if (i1()==0)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i1 (void)
 {
    int  i160=0;
    if (i160)
     return(i160);
    return(i160);
 }
