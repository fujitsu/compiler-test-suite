#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i8 (void);
    int  i080=0 ;
    int  i081=0 ;
    int  i082=0 ;
    int  i083=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i080)
     do
     i081++;
     while (i081<4);
    else
     i082++;
    if (i082==1 && i081==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     {
     i082++;
     }
    if (i082==1 && i081==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i081=0;
    i082=1;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     if (i082)
      i082++;
     else
      i081++;
    if (i082==2 && i081==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i081=0;
    i082=1;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     switch (i082) {
      case 1 :
           i082++;
     }
    if (i082==2 && i081==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     while (i082<4)
     i082++;
    if (i082==4 && i081==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     for (idxi=1;  i082<4;  idxi++)
     i082++;
    if (i082==4 && i081==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     do
     i082++;
     while (i082<4);
    if (i082==4 && i081==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
    if (i081==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
     i081=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     ;
    if (i081==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i081=0;
    idxi=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
 pass:
     i082++;
    if (i082==1 && i081==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i081=0;
    i082=0;
    if (i8()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i081=0;
    i082=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i8 (void)
 {
    int i080=0;
    int i081=0;
    if (i080)
     do
     i081++;
     while(i081<4);
    else
     return(i081);
  }
