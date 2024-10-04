#include<stdio.h>
int main()
{
  int wk;
  
  printf("*** \n");
  
  {
    int      ia = 1;
    int      ib = 2;
    wk = ia > ib;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int     *pa;
    int     zx=1;
    pa = &zx;
    wk = 1;
    if(wk == 1)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int     *ie;
    int     *ig;
    static  int arr[3] = { 0,1,2 };
    ie = arr;
    ig = &arr[1];
    wk = ie > ig;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int     *pb;
    static int      arr[3] = { 0,1,2 };
    pb = &arr[2];
    wk = arr > pb;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    struct chg0405 {
      int     parr[3];
      int      arr[3];
    } chg05;

    wk = chg05.parr < chg05.arr;
    
    if(wk != 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int    func1();
    int    func2();
    wk = 0;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    static int    arr7[3] = { 0,1,2 };
    int           *pia;
    pia = &arr7[2];
    wk = arr7 > pia;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int    func07();
    static int  (*func08)();
    int func1();
    func08 = func1;
    wk = 0;
    if(wk == 0)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    static int    arr09[] = { 0,1,2 };
    wk = 1;
    if(wk == 1)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int    func1();
    wk = 1;
    if(wk == 1)
      printf("*** \n");
    else
      printf("*** \n");
  }
  {
    int    func07();
    static int  (*func08)();
    int func1();
    func08 = func1;
    wk = 1;
    if(wk == 1)
      printf("*** \n");
    else
      printf("*** \n");
  }
  printf("*** \n");
}

int func07() { ; }

int func1() { ; }

int func2() { ; }
