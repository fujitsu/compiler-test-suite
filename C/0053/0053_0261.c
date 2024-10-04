#include<stdio.h>
int main()
{
    printf("*** \n");

     {
     int      ia = 1;
     int      ib = 2;
     ia += ib;
     if(ia == 3)
         printf("*** \n");
     else
         printf("*** \n");
     }
     {
     int      ie = 1;
     int     *pa;
     static int      arr[3] = { 0,1,2 };
     pa = arr;
     pa += ie;
     if(*pa == 1)
         printf("*** \n");
     else
         printf("*** \n");
     }
     {
     int      ic = 3;
     int      id = 2;
     ic -= id;
     if(ic == 1)
         printf("*** \n");
     else
         printf("*** \n");
     }
     {
     int      ig = 1;
     int     *pb;
     static int      arr[3] = { 0,1,2 };
     pb = &arr[2];
     pb -= ig;
     if(*pb == 1)
         printf("*** \n");
     else
         printf("*** \n");
     }
    printf("*** \n");
}
