#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i4 (void);
    int  i040=0 ;
    int  i041=1 ;
    int  i042=0 ;
    int  i043=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
     }
    else
     i042++;
    if (i042==1 && i041==1)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
       i041=0;
     }
    else
     {
     i042++;
     }
    if (i042==1 && i041==1)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i041=1;
    i042=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     if (i042)
      i042++;
     else
      i041=0;
    if (i042==2 && i041==1)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i041=1;
    i042=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     switch (i042) {
      case 1 :
           i042++;
     }
    if (i042==2 && i041==1)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     while (i042<4)
     i042++;
    if (i042==4 && i041==1)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     for (idxi=1;  i042<4;  idxi++)
     i042++;
    if (i042==4 && i041==1)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     do
     i042++;
     while (i042<4);
    if (i042==4 && i041==1)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
    if (i041==1)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
   i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     ;
    if (i041==1)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
 pass:
     i042++;
    if (i042==1 && i041==1)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i041=1;
    i042=0;
    if (i4()==1)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i042=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i4 (void)
 {
    int  i040=0;
    int  i041=1;
    if (i040)
     switch (i041) {
      case 1 :
           i041=0;
      }
    else
     return(i041);
 }
