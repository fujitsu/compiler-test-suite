#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i7 (void);
    int  i220=1 ;
    int  i221=0 ;
    int  i222=0 ;
    int  i223=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i220)
     i221++;
    else
     i222++;
    if (i222==0 && i221==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     {
     i222++;
     }
    if (i222==0 && i221==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
      i221++;
    else
     if (i222)
      i222++;
     else
      i222++;
    if (i222==0 && i221==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i221=0;
    i222=1;
    if (i220)
     i221++;
    else
     switch (i222) {
      case 1 :
           i222++;
     }
    if (i222==1 && i221==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     while (i222<4)
     i222++;
    if (i222==0 && i221==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     for (idxi=1;  i222<4;  idxi++)
     i222++;
    if (i222==0 && i221==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     do
     i222++;
     while (i222<4);
    if (i222==0 && i221==1)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i220)
     i221++;
    else
     goto it;
    if (i221==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
     i221=0;
    if (i220)
     i221++;
    else
     ;
    if (i221==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i221=0;
    if (i220)
     i221++;
    else
 pass:
     i222++;
    if (i222==0 && i221==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i221=0;
    i222=0;
    if (i7()==1)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i221=0;
    i222=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i7 (void)
 {
    int i220=1;
    int i221=0;
    if (i220)
     i221++;
    else
     return(i221);
    return(i221);
 }
