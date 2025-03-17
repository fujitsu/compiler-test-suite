#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int i6 (void);
    int  i060=0 ;
    int  i061=0 ;
    int  i062=0 ;
    int  i063=0 ;
    int  idxi=1 ;
int main (void)
  {
    printf("*** CATEGORY ** TEST FOR -IF- ** STARTED ***\n");
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     i062++;
    if (i062==1 && i061==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i061=0;
    i062=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     {
     i062++;
     }
    if (i062==1 && i061==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i061=0;
    i062=1;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     if (i062)
      i062++;
     else
      i061++;
    if (i062==2 && i061==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i061=0;
    i062=1;
    idxi=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     switch (i062) {
      case 1 :
           i062++;
     }
    if (i062==2 && i061==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i061=0;
    i062=0;
    idxi=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     while (i062<4)
     i062++;
    if (i062==4 && i061==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i061=0;
    i062=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     for (idxi=1;  i062<4;  idxi++)
     i062++;
    if (i062==4 && i061==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i061=0;
    i062=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     do
     i062++;
     while (i062<4);
    if (i062==4 && i061==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i061=0;
    i062=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto it2;
 it:
    if (i061==0)
     printf("*** CATEGORY-08 *** 0     K ***\n");
    else
     printf("*** CATEGORY-08 **** N   G ****\n");
 it2:
     i061=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     ;
    if (i061==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i061=0;
    idxi=0;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
 pass:
     i062++;
    if (i062==1 && i061==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i061=0;
    i062=0;
    idxi=0;
    if (i6()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i061=0;
    i062=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int i6 (void)
 {
    int  i060=0;
    int  i061=0;
    int  idxi=1;
    if (i060)
     for (idxi=1;  i061<4;  idxi++)
     i061++;
    else
     return(i061);
  }
