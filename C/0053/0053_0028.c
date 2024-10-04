#include<stdio.h>

int func1();
int func2();
int main()
{
  int wk=0;
  
  printf("***  ** MK3 TEST FOR X_CHGTRE ** STARTED ***\n");
  
  {
    static int    arr1[5]={ 0,1,2,3,4 };
    int    ia = 3;
    int    ib = 2;
    
    wk = arr1[ia>ib];
    if(wk==1)
      printf("*** -01 *** O     K ***\n");
    else
      printf("*** -01 **** N   G ****\n");
  }
  {
    int   ig = 1;
    int   ih = 2;
    
    wk = ih > ig;
    if(wk)
      printf("*** -02 *** O     K ***\n");
    else
      printf("*** -02 **** N   G ****\n");
  }
  {
    struct chg0703 {
      int arr2[2];
      int arr3[2];
    } chg03;
    
    int    *pt1;
    int    *pt2;
    pt1 = chg03.arr2;
    pt2 = chg03.arr3;
    
    wk = pt2 > pt1;
    
    if(wk)
      printf("*** -03 *** O     K ***\n");
    else
      printf("*** -03 **** N   G ****\n");
  }
  {
    static int arr4[2];
    int    wk;
    int    *pt3;
    pt3 = &arr4[1];
    
    wk = &arr4[1] > arr4;
    if(wk)
      printf("*** -04 *** O     K ***\n");
    else
      printf("*** -04 **** N   G ****\n");
  }
  {
    struct chg0705 {
      int sib;
      int arr5[2];
    } chg05;

    int    *pt4;
    pt4 = &(chg05.sib);
    
    wk = chg05.arr5 > pt4;
    if(wk)
      printf("*** -05 *** O     K ***\n");
    else
      printf("*** -05 **** N   G ****\n");
  }
  {
    struct chg0706 {
      int arr6[2];
      int arr7[2];
    } chg06;
    
    wk = chg06.arr7 > chg06.arr6;
    
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
    int      it = 3;
    int      wk2;
    
    wk = it > 2;
    wk2= it > 'a';
    if(wk)
      {
	if(wk2)
	  printf("*** -08 **** N   G ****\n");
	else
	  printf("*** -08 *** O     K ***\n");
      }
    else
      printf("*** -08 **** N   G ****\n");
  }
  {
    int     *pt7;
    int     io = 1;
    pt7=&io;
    
    wk = 1;
    if(wk)
      printf("*** -09 *** O     K ***\n");
    else
      printf("*** -09 **** N   G ****\n");
  }
  {
    int     arr9[2];
    
    wk = 1;
    if(wk)
      printf("*** -10 *** O     K ***\n");
    else
      printf("*** -10 **** N   G ****\n");
  }
  {
    wk = 1;
    if(wk)
      printf("*** -11 *** O     K ***\n");
    else
      printf("*** -11 **** N   G ****\n");
  }
  {
    int      in1 = 4;
    
    wk = 5 > in1;
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
