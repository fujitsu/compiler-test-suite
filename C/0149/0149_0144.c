#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i110=0 ;
    int  i111=0 ;
    int  i112=0 ;
    int  i113=0 ;
    int  idxi=1 ;
int i11 (void);
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i110)
     ;
    else
     i112++;
    if (i112==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i112=0;
    if (i110)
     ;
    else
     {
     i112++;
     }
    if (i112==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i112=1;
    i113=0;
    if (i110)
      ;
    else
     if (i112)
      i112++;
     else
      i111++;
    if (i112==2 && i111==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i111=0;
    i112=1;
    if (i110)
     ;
    else
     switch (i112) {
      case 1 :
           i112++;
     }
    if (i112==2)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i112=0;
    if (i110)
     ;
    else
     while (i112<4)
     i112++;
    if (i112==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i112=0;
    if (i110)
     ;
    else
     for (idxi=1;  i112<4;  idxi++)
     i112++;
    if (i112==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i112=0;
    if (i110)
     ;
    else
     do
     i112++;
     while (i112<4);
    if (i112==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i112=0;
    if (i110)
     ;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto where9;
 it:
     printf("*** CATEGORY-08 *** 0     K ***\n");
 where9:
    if (i110)
     ;
    else
     ;
    if (idxi)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    if (i110)
     ;
    else
 pass:
     i112++;
    if (i112==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i112=0;
    if (i11()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i112=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i11 (void)
 {
    int  i110=0;
    if (i110)
     ;
    else
     return(i110);
    return(1);
 }
