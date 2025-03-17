#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
         float   a1=1.0,a2=2.0,a3=3.0;
         double  b1=10.0,b2=20.0,b3=30.0;
   long  double  c1=100.0,c2=200.0,c3=300.0;
int main()  {
 
         float   x1,x2,x3;
         double  y1,y2,y3;
   long  double  z1,z2,z3;
 
         float   f1(),f2(),f3();
         double  f4(),f5(),f6();
   long  double  f7(),f8(),f9();
 
  printf(" TEST-START \n");
 
     x1=f1();
     if(x1==3.0)
        printf(" 1-1 TEST -O  K- \n");
     else
        printf(" 1-1 TEST - NG - \n");
 
     x2=f2();
     if(x2==5.0)
        printf(" 1-2 TEST -O  K- \n");
     else
        printf(" 1-2 TEST - NG - \n");
 
     x3=f3();
     if(x3==4.0)
        printf(" 1-3 TEST -O  K- \n");
     else
        printf(" 1-3 TEST - NG - \n");
 
     y1=f4();
     if(y1==30.0)
        printf(" 2-1 TEST -O  K- \n");
     else
        printf(" 2-1 TEST - NG - \n");
 
     y2=f5();
     if(y2==50.0)
        printf(" 2-2 TEST -O  K- \n");
     else
        printf(" 2-2 TEST - NG - \n");
 
     y3=f6();
     if(y3==40.0)
        printf(" 2-3 TEST -O  K- \n");
     else
        printf(" 2-3 TEST - NG - \n");
 
     z1=f7();
     if(z1==300.0)
        printf(" 3-1 TEST -O  K- \n");
     else
        printf(" 3-1 TEST - NG - \n");
 
     z2=f8();
     if(z2==500.0)
        printf(" 3-2 TEST -O  K- \n");
     else
        printf(" 3-2 TEST - NG - \n");
 
     z3=f9();
     if(z3==400.0)
        printf(" 3-3 TEST -O  K- \n");
     else
        printf(" 3-3 TEST - NG - \n");
 
 
  printf(" TEST-END \n");
exit (0);
}
 
  float f1()  {
        return(a1+a2);
  }
 
  float f2()  {
        return(a2+a3);
  }
 
  float f3()  {
        return(a3+a1);
  }
 
  double f4()  {
        return(b1+b2);
  }
 
  double f5()  {
        return(b2+b3);
  }
 
  double f6()  {
        return(b3+b1);
  }
 
  long  double  f7()  {
        return(c1+c2);
  }
 
  long  double  f8()  {
        return(c2+c3);
  }
 
  long  double  f9()  {
        return(c3+c1);
  }
 
