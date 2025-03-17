#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
    printf("*** CATEGORY TEST *** STARTED ***\n");
 
     {
     int      ia = 1;
     int      ib = 2;
     ia += ib;
     if(ia == 3)
         printf("*** CATEGORY-01 *** O     K ***\n");
     else
         printf("*** CATEGORY-01 **** N   G ****\n");
     }
     {
     int      ie = 1;
     int     *pa;
     static int      arr[3] = { 0,1,2 };
     pa = arr;
     pa += ie;
     if(*pa == 1)
         printf("*** CATEGORY-02 *** O     K ***\n");
     else
         printf("*** CATEGORY-02 **** N   G ****\n");
     }
     {
     int      ic = 3;
     int      id = 2;
     ic -= id;
     if(ic == 1)
         printf("*** CATEGORY-03 *** O     K ***\n");
     else
         printf("*** CATEGORY-03 **** N   G ****\n");
     }
     {
     int      ig = 1;
     int     *pb;
     static int      arr[3] = { 0,1,2 };
     pb = &arr[2];
     pb -= ig;
     if(*pb == 1)
         printf("*** CATEGORY-04 *** O     K ***\n");
     else
         printf("*** CATEGORY-04 **** N   G ****\n");
     }
    printf("*** CATEGORY TEST *** ENDED ***\n");
exit (0);
}
