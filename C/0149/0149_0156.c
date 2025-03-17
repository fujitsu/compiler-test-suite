#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i8 (void);
    int  i230=1 ;
    int  i231=0 ;
    int  i232=0 ;
    int  i233=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i230)
     do
     i231++;
     while (i231<4);
    else
     i232++;
    if (i232==0 && i231==4)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     {
     i232++;
     }
    if (i232==0 && i231==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     if (i232)
      i232++;
     else
      i232++;
    if (i232==0 && i231==4)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i231=0;
    i232=1;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     switch (i232) {
      case 1 :
           i232++;
     }
    if (i232==1 && i231==4)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     while (i232<4)
     i232++;
    if (i232==0 && i231==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     for (idxi=1;  i232<4;  idxi++)
     i232++;
    if (i232==0 && i231==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     do
     i232++;
     while (i232<4);
    if (i232==0 && i231==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     goto it;
    if (i231==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
     i231=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     ;
    if (i231==4)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i231=0;
    idxi=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
 pass:
     i232++;
    if (i232==0 && i231==4)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i231=0;
    i232=0;
    if (i8()==4)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i231=0;
    i232=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i8 (void)
 {
    int i230=1;
    int i231=0;
    if (i230)
     do
     i231++;
     while(i231<4);
    else
     return(i231);
    return(i231);
  }
