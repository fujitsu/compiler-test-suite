#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i6 (void);
    int  i210=1 ;
    int  i211=0 ;
    int  i212=0 ;
    int  i213=0 ;
    int  idxi=1 ;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     i212++;
    if (i212==0 && i211==4)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i211=0;
    i212=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     {
     i212++;
     }
    if (i212==0 && i211==4)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i211=0;
    i212=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     if (i212)
      i212++;
     else
      i212++;
    if (i212==0 && i211==4)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i211=0;
    i212=1;
    idxi=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     switch (i212) {
      case 1 :
           i212++;
     }
    if (i212==1 && i211==4)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i211=0;
    i212=0;
    idxi=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     while (i212<4)
     i212++;
    if (i212==0 && i211==4)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i211=0;
    i212=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     for (idxi=1;  i212<4;  idxi++)
     i212++;
    if (i212==0 && i211==4)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i211=0;
    i212=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     do
     i212++;
     while (i212<4);
    if (i212==0 && i211==4)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i211=0;
    i212=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     goto it;
    if (i211==4)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
 it:
     printf("*** CATEGORY-08 **** N   G ****\n");
     i211=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     ;
    if (i211==4)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i211=0;
    idxi=0;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
 pass:
     i212++;
    if (i212==0 && i211==4)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i211=0;
    i212=0;
    idxi=0;
    if (i6()==4)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i211=0;
    i212=0;
    idxi=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i6 (void)
 {
    int  i210=1;
    int  i211=0;
    int  idxi=1;
    if (i210)
     for (idxi=1;  i211<4;  idxi++)
     i211++;
    else
     return(i211);
    return(i211);
  }
