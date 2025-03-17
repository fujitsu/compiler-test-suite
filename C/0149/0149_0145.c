#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  i120=0 ;
    int  i121=0 ;
    int  i122=0 ;
    int  i123=0 ;
    int  idxi=1 ;
int i12 (void);
int 
main (void)
  {
    printf("*** MSESTI12 ** TEST FOR -IF- ** STARTED ***\n");
    if (i120)
 addr1:
     i121++;
    else
     i122++;
    if (i122==1 && i121==0)
     printf("*** CATEGORY-01 *** 0     K ***\n");
    else
     printf("*** CATEGORY-01 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i120)
 addr2:
     i121++;
    else
     {
     i122++;
     }
    if (i122==1 && i121==0)
     printf("*** CATEGORY-02 *** 0     K ***\n");
    else
     printf("*** CATEGORY-02 **** N   G ****\n");
    i121=0;
    i122=1;
    if (i120)
 test3:
     i121++;
    else
     if (i122)
      i122++;
     else
      i121++;
    if (i122==2 && i121==0)
      printf("*** CATEGORY-03 *** 0     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    i121=0;
    i122=1;
    if (i120)
 addr4:
     i121++;
    else
     switch (i122) {
      case 1 :
           i122++;
     }
    if (i122==2 && i121==0)
      printf("*** CATEGORY-04 *** 0     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i120)
 addr5:
     i121++;
    else
     while (i122<4)
     i122++;
    if (i122==4 && i121==0)
      printf("*** CATEGORY-05 *** 0     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i120)
 addr6:
     i121++;
    else
     for (idxi=1;  i122<4;  idxi++)
     i122++;
    if (i122==4 && i121==0)
      printf("*** CATEGORY-06 *** 0     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i120)
 addr7:
     i121++;
    else
     do
     i122++;
     while (i122<4);
    if (i122==4 && i121==0)
      printf("*** CATEGORY-07 *** 0     K ***\n");
    else
      printf("*** CATEGORY-07 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i120)
 addr8:
     i121++;
    else
     goto it;
     printf("*** CATEGORY-08 **** N   G ****\n");
     goto where9;
 it:
     printf("*** CATEGORY-08 *** 0     K ***\n");
 where9:
   i121=0;
    if (i120)
 addr9:
     i121++;
    else
     ;
    if (i121==0)
      printf("*** CATEGORY-09 *** 0     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    i121=0;
    if (i120)
 addr10:
     i121++;
    else
 pass:
     i122++;
    if (i122==1 && i121==0)
      printf("*** CATEGORY-10 *** 0     K ***\n");
    else
      printf("*** CATEGORY-10 **** N   G ****\n");
    i121=0;
    i122=0;
    if (i12()==0)
      printf("*** CATEGORY-11 *** 0     K ***\n");
    else
      printf("*** CATEGORY-11 **** N   G ****\n");
    i122=0;
   printf("*** CATEGORY ** TEST FOR -IF- ** ENDED ***\n");
exit (0);
 }
 int 
i12 (void)
 {
    int  i120=0;
    if (i120)
 addr11:
     i120++;
    else
     return(i120);
    return(i120);
 }
