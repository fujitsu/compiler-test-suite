#include  <stdio.h>
 
  void func1(),func3(),func5();
  int *func2(),func4();
int main()
  {
       func1();
       func3();
       func5();
  }
  void func1()
  {
       static int *(*eee)()=func2;
       if(*(*eee)() == 10)
        printf("***  CHECK01 OK ***\n");
       else
        printf("***  CHECK01 NG ***\n");
  }
  int  *func2()
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void func3()
  {
       int    ccc;
       static int aaa=20,(*bbb)()=func4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("***  CHECK02 OK ***\n");
       else
        printf("***  CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void func5()
  {
       void   func6();
       static int b=20,*e;
       e=&b;
       func6(e);
  }
  void func6(a)
int *a;
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("***  CHECK3 OK ***\n");
       else
        printf("***  CHECK3 NG ***\n");
  }
#define proc     {
#define endproc  }

int  func4(a)
      int *a ;
proc
      *a=1 ;
endproc
