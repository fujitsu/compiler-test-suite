#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i4 (void);
    int  i190=1 ;
    int  i191=0 ;
    int  i192=0 ;
    int  i193=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
     }
    else
     i192++;
    if (i192==0 && i191==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
       i191++;
     }
    else
     {
     i192++;
     }
    if (i192==0 && i191==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     if (i192)
      i192++;
     else
      i192++;
    if (i192==0 && i191==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i191=0;
    i192=1;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     switch (i192) {
      case 1 :
           i192++;
     }
    if (i192==1 && i191==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     while (i192<4)
     i192++;
    if (i192==0 && i191==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     for (idxi=1;  i192<4;  idxi++)
     i192++;
    if (i192==0 && i191==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     do
     i192++;
     while (i192<4);
    if (i192==0 && i191==1)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     goto it;
    if (i191==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
   i191=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     ;
    if (i191==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i191=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
 pass:
     i192++;
    if (i192==0 && i191==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i191=0;
    i192=0;
    if (i4()==1)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i191=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i4 (void)
 {
    int  i190=1;
    int  i191=0;
    if (i190)
     switch (i190) {
      case 1 :
           i191++;
      }
    else
     return(i191);
    return(i191);
 }
