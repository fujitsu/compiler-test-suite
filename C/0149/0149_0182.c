#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int r012 (void);
int r011 (void);
    int  r010=1 ;
int 
main (void)
  {
 printf("*** CATEGORY ** TEST FOR -RETURN- ** STARTED ***\n");
    if (r011()==1)
      printf("*** CATEGORY-01 *** O     K ***\n");
    else
      printf("*** CATEGORY-01 **** N   G ****\n");
    r012();
    if (r010==2)
      printf("*** CATEGORY-02 *** O     K ***\n");
    else
      printf("*** CATEGORY-02 **** N   G ****\n");
 printf("*** CATEGORY ** TEST FOR -RETURN-  ** ENDED ***\n");
exit (0);
 }
 int 
r011 (void)
 {
   return(r010);
 }
 int 
r012 (void)
 {
   r010++;
   return 0;
 }
