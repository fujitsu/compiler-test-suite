#include <stdlib.h>
#include <stdio.h>
#include <math.h>
    int  c010=0 ;
    int  idxc=0 ;
int main()
  {
 printf("*** CATEGORY ** TEST FOR -CONTINUE- ** STARTED ***\n");
    for (idxc=1;  idxc<4;  idxc++) {
    continue;
 stc01:
    c010++;
    }
    if (c010==0)
      printf("*** CATEGORY-01 *** O     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    c010=0;
    idxc=0;
    while (c010<4)  {
    c010++;
    continue;
    }
    if (c010==4)
      printf("*** CATEGORY-02 *** O     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
    c010=0;
    do  {
    c010++;
    continue;
    }
    while (c010<4);
    if (c010==4)
      printf("*** CATEGORY-03 *** O     K ***\n");
    else
      printf("*** CATEGORY-03 **** N   G ****\n");
    c010=0;
 printf("*** CATEGORY ** TEST FOR -CONTINUE-  ** ENDED ***\n");
exit (0);
 }
