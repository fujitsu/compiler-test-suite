#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int c2 (void);
    int  i020=0 ;
    int  i021=0 ;
    int  i022=0 ;
    int  i023=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i020)
     {
     i021=0;
     }
    else
     i021++;
    if (i021==1)
      printf("*** CATEGORY-01 *** 0     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    i021=0;
    if (i020)
     {
     i021=0;
     }
    else
     {
     i021++;
     }
    if (i021==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i021=1;
    if (i020)
     {
     i021=0;
     }
    else
     if (i021)
      i021++;
     else
      i021=0;
    if (i021==2)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i021=1;
    i022=0;
    if (i020)
     i021=0;
    else
     switch (i021) {
      case 1 :
           i021++;
     }
    if (i021==2)
     printf("*** CATEGORY-04 *** 0     K ***\n");
    else
     printf("*** CATEGORY-04 **** N   G ****\n");
    i021=0;
    i022=0;
    i023=0;
    if (i020)
     {
     i021=1;
     }
    else
     while (i022<4)
     i022++;
    if (i022==4 && i021==0)
     printf("*** CATEGORY-05 *** 0     K ***\n");
    else
     printf("*** CATEGORY-05 **** N   G ****\n");
    i021=0;
    i022=0;
    if (i020)
     {
     i021=1;
     }
    else
     for (idxi=1;  i022<4;  idxi++)
     i022++;
    if (i022==4 && i021==0)
     printf("*** CATEGORY-06 *** 0     K ***\n");
    else
     printf("*** CATEGORY-06 **** N   G ****\n");
    i021=0;
    i022=0;
    idxi=0;
    if (i020)
     {
     i021=1;
     }
    else
     do
     i022++;
     while (i022<4);
    if (i022==4 && i021==0)
     printf("*** CATEGORY-07 *** 0     K ***\n");
    else
     printf("*** CATEGORY-07 **** N   G ****\n");
    i021=0;
    i022=0;
    idxi=0;
    if (i020)
     {
     i021=0;
     }
    else
     goto apoint;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto bpoint;
 apoint :
     printf("*** CATEGORY-08 *** 0     K ***\n");
 bpoint :
    if (i020)
     {
     i021=1;
     }
    else
     ;
    if (i021==0)
     printf("*** CATEGORY-09 *** 0     K ***\n");
    else
     printf("*** CATEGORY-09 **** N   G ****\n");
    i021=0;
    if (i020)
     {
     i021=0;
     }
    else
 that :
     i021++;
    if (i021==1)
     printf("*** CATEGORY-10 *** 0     K ***\n");
    else
     printf("*** CATEGORY-10 **** N   G ****\n");
    i021=0;
    if (c2()==0)
     printf("*** CATEGORY-11 *** 0     K ***\n");
    else
     printf("*** CATEGORY-11 **** N   G ****\n");
    i020=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int c2 (void)
 {
    int  i020=0;
    if (i020)
     {
     i020++;
     }
    else
     return(i020);
 }
