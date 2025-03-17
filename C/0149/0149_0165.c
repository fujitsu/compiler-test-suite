#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int n1 (void);
    int  n010=0;
    int  n011=0;
    int  idxn=0;
int 
main (void)
  {
    printf("*** CATEGORY ** TEST FOR LABELED ** STARTED ***\n");
 test1:
    {n010++;
      n010++;}
    if(n010==2)
      printf("*** CATEGORY-01 *** O     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    n010=0;
 test2:
    n010++;
    if(n010==1)
      printf("*** CATEGORY-02 *** O     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
    n010=1;
 test3:
    if(n010)
      printf("*** CATEGORY-03 *** O     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    n010=1;
 test4:
    switch(n010) {
     case 1 :
      printf("*** CATEGORY-04 *** O     K ***\n");
      break;
     default :
      printf("*** CATEGORY-04 **** N   G ****\n");
      break;
    }
    n010=0;
 test5:
    while(n010<4)
    n010++;
    if(n010==4)
      printf("*** CATEGORY-05 *** O     K ***\n");
    else
      printf("*** CATEGORY-05 **** N   G ****\n");
    n010=0;
 test6:
    for(idxn=0;  n010<4;  idxn++)
    n010++;
    if(n010==4)
      printf("*** CATEGORY-06 *** O     K ***\n");
    else
      printf("*** CATEGORY-06 **** N   G ****\n");
    n010=0;
 test7:
    goto test72;
 test71:
    printf("*** CATEGORY-07 **** N   G ****\n");
    goto test8;
 test72:
    printf("*** CATEGORY-07 *** O     K ***\n");
 test8:
    ;
    printf("*** CATEGORY-08 *** O     K ***\n");
    n010=0;
 test9:
    do
    n010++;
    while(n010<4);
    if(n010==4)
      printf("*** CATEGORY-09 *** O     K ***\n");
    else
      printf("*** CATEGORY-09 **** N   G ****\n");
    n010=1;
    goto test10;
 test101:
    switch (n010) {
 test10:
    case 1 :
         printf("*** CATEGORY-10 *** O     K ***\n");
         break;
    default :
         printf("*** CATEGORY-10 **** N   G ****\n");
         break;
    }
    n010=0;
    goto test11;
 test111:
    switch (n010) {
 test11:
    default :
         printf("*** CATEGORY-11 *** O     K ***\n");
         break;
    case 1 :
         printf("*** CATEGORY-11 **** N   G ****\n");
         break;
    }
    goto test12;
 test12:
 test121:
    n010++;
    if (n010==1)
     printf("*** CATEGORY-12 *** O     K ***\n");
    else
     printf("*** CATEGORY-12 **** N   G ****\n");
    n010=0;
 test13:
    if (n1()==1)
     printf("*** CATEGORY-13 *** O     K ***\n");
    else
     printf("*** CATEGORY-13 **** N   G ****\n");
test14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatest14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatest14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatest14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaatest14aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
    n010++;
    if(n010==1)
      printf("*** CATEGORY-14 *** O     K ***\n");
    else
      printf("*** CATEGORY-14 **** N   G ****\n");
    n010=1;
    for (idxn=1;  idxn<4;  idxn++) {
test15:
      printf("*** CATEGORY-15 *** O     K ***\n");
    continue;
test15d:
      printf("*** CATEGORY-15 **** N   G ****\n");
    }
    switch (n010)  {
     case 1 :
test16:
     break;
test16d:
      printf("*** CATEGORY-16 **** N   G ****\n");
    }
    if (n010)
      printf("*** CATEGORY-16 *** O     K ***\n");
    else
      printf("*** CATEGORY-16 **** N   G ****\n");
   printf("*** CATEGORY ** TEST FOR LABELED ** ENDED ***\n");
exit (0);
 }
 int 
n1 (void)
 {
 test131:
        return(1);
 }
