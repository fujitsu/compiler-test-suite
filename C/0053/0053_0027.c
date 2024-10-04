#include<stdio.h>

int func1();
int func2();
int main()
{
  int wk=0;
  
  printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");
  
  {
    static int    arr1[5]={ 0,1,2,3,4 };
    int    ia = 1;
    int    ib = 2;
    
    wk = arr1[ia<=ib];
    if(wk==1)
      printf("*** -01 *** O     K ***\n");
    else
      printf("*** -01 **** N   G ****\n");
  }
  {
    int   ig = 1;
    int   ih = 2;
    
    wk = ig <= ih;
    if(wk)
      printf("*** -02 *** O     K ***\n");
    else
      printf("*** -02 **** N   G ****\n");
  }
  {
    struct chg0603{
      int arr2[2];
      int arr3[2];
    } chg03;
    
    int    *pt1;
    int    *pt2;
    
    pt1 = chg03.arr2;
    pt2 = chg03.arr3;
    
    wk = pt1 <= pt2;
    
    if(wk)
      printf("*** -03 *** O     K ***\n");
    else
      printf("*** -03 **** N   G ****\n");
  }
  {
    struct chg0604 {
      int sia;
      int arr4[2];
    } chg04;
    
    int    *pt3;
    pt3 = &(chg04.sia);
    
    wk = pt3 <= chg04.arr4;
    
    if(wk)
      printf("*** -04 *** O     K ***\n");
    else
      printf("*** -04 **** N   G ****\n");
  }
  {
    struct chg0605 {
      int arr5[2];
      int sib;
    } chg05;
    
    int    *pt4;
    pt4 = &(chg05.arr5[1]);
    
    wk = chg05.arr5 <= pt4;
    if(wk)
      printf("*** -05 *** O     K ***\n");
    else
      printf("*** -05 **** N   G ****\n");
  }
     {
       struct chg0606 {
	 int arr6[2];
	 int arr7[2];
       } chg06;

       wk = chg06.arr6 <= chg06.arr7;

       if(wk)
           printf("*** -06 *** O     K ***\n");
       else
           printf("*** -06 **** N   G ****\n");
     }
     {
       wk=1;
       if(wk)
           printf("*** -07 *** O     K ***\n");
       else
           printf("*** -07 **** N   G ****\n");
     }
     {
       int      it = 1;
       int      wk2;

       wk = it <= 2;
       wk2= it <= 'a';
       if(wk)
       {
           if(wk2)
               printf("*** -08 *** O     K ***\n");
           else
               printf("*** -08 **** N   G ****\n");
       }
       else
           printf("*** -08 **** N   G ****\n");
     }
     {
       int     *pt7;
       int     io = 1;
       pt7=&io;

       wk = 0;
       if(wk)
           printf("*** -09 **** N   G ****\n");
       else
           printf("*** -09 *** O     K ***\n");
     }
     {
       int     arr9[2];

       wk = 0;
       if(wk)
           printf("*** -10 **** N   G ****\n");
       else
           printf("*** -10 *** O     K ***\n");
     }
     {
       wk = 0;
       if(wk)
           printf("*** -11 **** N   G ****\n");
       else
           printf("*** -11 *** O     K ***\n");
     }
     {
       int      in1 = 4;

       wk = 3 <= in1;
       if(wk)
           printf("*** -12 *** O     K ***\n");
       else
           printf("*** -12 **** N   G ****\n");
     }

   printf("***  ** MK3 TEST FOR X_CHGTRE ** ENDED ***\n");
}

int func1()
{  ;;;;;;;;;;;;;;;;;;;;;; }

int func2()
{  ;;;;;;;;;;;;;;;;;;;;;; }
