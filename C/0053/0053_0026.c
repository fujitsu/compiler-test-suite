#include<stdio.h>

int func1();
int main()
{
   int wk=0;

   printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

     {
       int    *pa;
       int    ib=1;
       pa=&ib;

       wk = 1;
       if(wk)
           printf("*** -01 *** O     K ***\n");
       else
           printf("*** -01 **** N   G ****\n");
     }
     {
       int    arr1[3];

       wk = 1;
       if(wk)
           printf("*** -02 *** O     K ***\n");
       else
           printf("*** -02 **** N   G ****\n");
     }
     {
       wk = 1;
       if(wk)
           printf("*** -03 *** O     K ***\n");
       else
           printf("*** -03 **** N   G ****\n");
     }
     {
       int ic = 2;

       wk = 1 < ic;
       if(wk)
           printf("*** -04 *** O     K ***\n");
       else
           printf("*** -04 **** N   G ****\n");
     }
     {
       int ic = 2;
       int *pc;
       pc = &ic;

       wk = 1;
       if(wk)
           printf("*** -05 *** O     K ***\n");
       else
           printf("*** -05 **** N   G ****\n");
     }

   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{  ;;;;;;;;;;;;;;;;;;;;;; }
