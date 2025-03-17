#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  b010=1 ;
    int  idxb=0 ;
int main()
  {
 printf("*** CATEGORY ** TEST FOR -BREAK- ** STARTED ***\n");
    switch (b010)
     case 1 :
     break;
    if (b010==1)
      printf("*** CATEGORY-01 *** O     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    b010=0;
    for (idxb=1;  b010<4;  idxb++)
    break;
    if (idxb==1)
      printf("*** CATEGORY-02 *** O     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
    b010=1;
    idxb=0;
    while (b010<4)
    break;
    if (b010==1)
      printf("*** CATEGORY-03 *** O     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    b010=1;
   do
    break;
    while (b010<4);
    if (b010==1)
      printf("*** CATEGORY-04 *** O     K ***\n");
    else
      printf("*** CATEGORY-04 **** N   G ****\n");
    b010=0;
 printf("*** CATEGORY ** TEST FOR -BREAK-  ** ENDED ***\n");
exit (0);
 }
