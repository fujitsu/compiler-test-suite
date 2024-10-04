#include<stdio.h>

int func1();
int func2();
int main()
{
   int wk=0;

   printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");

    {
      struct chg0301 {
	int arr1[3];
	int arr2[3];
      } chg01;

      int *p1;
      int *p2;
      p1 = chg01.arr1;
      p2 = chg01.arr2;

      wk = chg01.arr1 < chg01.arr2;

      if(wk)
	printf("*** -01 *** O     K ***\n");
      else
	printf("*** -01 **** N   G ****\n");
    }
     {
       struct chg0302 {
	 int arr3[3];
	 int arr4[3];
       } chg02;

       int *p3;
       p3 = chg02.arr3;

       wk = p3 < chg02.arr4;

       if(wk)
	 printf("*** -02 *** O     K ***\n");
       else
	 printf("*** -02 **** N   G ****\n");
     }
     {
       struct chg0303 {
	 int arr5[3];
	 int arr6[3];
       } chg03;

       int *p4;
       p4 = chg03.arr6;

       wk = chg03.arr5 < p4;

       if(wk)
           printf("*** -03 *** O     K ***\n");
       else
           printf("*** -03 **** N   G ****\n");
     }
     {
       struct chg0304 {
	 int arr7[3];
	 int arr8[3];
       } chg04;

       wk = chg04.arr7 < chg04.arr8;

       if(wk)
           printf("*** -04 *** O     K ***\n");
       else
           printf("*** -04 **** N   G ****\n");
     }
     {
       wk=1;
       if(wk)
           printf("*** -05 *** O     K ***\n");
       else
           printf("*** -05 **** N   G ****\n");
     }

   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{  ;;;;;;;;;;;;;;;;;;;;;; }

int func2()
{ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;}
