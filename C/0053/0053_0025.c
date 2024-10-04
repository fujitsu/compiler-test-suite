#include<stdio.h>

int func1();
int main()
{
   int wk=0;

   printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

     {
       int    ib=1;
       int    wk2;

       wk = ib < 2;
       wk2= ib < 'a';
       if(wk)
       {
           if(wk2)
           {
               printf("*** -01 *** O     K ***\n");
           }
           else
           {
               printf("*** -01 **** N   G ****\n");
           }
       }
       else
           printf("*** -01 **** N   G ****\n");
     }
     {
       int  *p;
       int  a=1;
       p=&a;

       wk = 0;
       if(wk)
           printf("*** -02 **** N   G ****\n");
       else
           printf("*** -02 *** O     K ***\n");
     }
     {
       static int  arr[3];

       wk = 0;
       if(wk)
           printf("*** -03 **** N   G ****\n");
       else
           printf("*** -03 *** O     K ***\n");
     }
     {
       wk = 0;
       if(wk)
           printf("*** -04 **** N   G ****\n");
       else
           printf("*** -04 *** O     K ***\n");
     }

   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{  ;;;;;;;;;;;;;;;;;;;;;; }
