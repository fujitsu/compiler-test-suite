#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
          float   fl1=1.0;
          float   fl2=2.0;
          float   fl3=3.0;
          double  dl1=10.0;
          double  dl2=20.0;
          double  dl3=30.0;
     long double ldl1=100.0;
     long double ldl2=200.0;
     long double ldl3=300.0;
int main()  {
     float  a1,a2,a3,b1,b2,b3,c1,c2,c3;
     int    d1;
 
          float   f1(),f2(),f3();
          double  f4(),f5(),f6();
     long double  f7(),f8(),f9();
          void    f10();
 
  printf(" TEST-START \n");
 
     a1=f1();
     if(a1==1.0)
        printf(" 1-1 TEST -O  K- \n");
     else
        printf(" 1-1 TEST - NG - \n");
 
     a2=f2();
     if(a2==10.0)
        printf(" 1-2 TEST -O  K- \n");
     else
        printf(" 1-2 TEST - NG - \n");
 
     a3=f3();
     if(a3==100.0)
        printf(" 1-3 TEST -O  K- \n");
     else
        printf(" 1-3 TEST - NG - \n");
 
     b1=f4();
     if(b1==2.0)
        printf(" 2-1 TEST -O  K- \n");
     else
        printf(" 2-1 TEST - NG - \n");
 
     b2=f5();
     if(b2==20.0)
        printf(" 2-2 TEST -O  K- \n");
     else
        printf(" 2-2 TEST - NG - \n");
 
     b3=f6();
     if(b3==200.0)
        printf(" 2-3 TEST -O  K- \n");
     else
        printf(" 2-3 TEST - NG - \n");
 
     c1=f7();
     if(c1==3.0)
        printf(" 3-1 TEST -O  K- \n");
     else
        printf(" 3-1 TEST - NG - \n");
 
     c2=f8();
     if(c2==30.0)
        printf(" 3-2 TEST -O  K- \n");
     else
        printf(" 3-2 TEST - NG - \n");
 
     c3=f9();
     if(c3==300.0)
        printf(" 3-3 TEST -O  K- \n");
     else
        printf(" 3-3 TEST - NG - \n");
 
     f10();
        printf(" 4-1 TEST -O  K- \n");
 
  printf(" TEST-END \n");
exit (0);
}
 
  float  f1()  {
        return(fl1);
  }
 
  float  f2()  {
        return(dl1);
  }
 
  float  f3()  {
        return(ldl1);
  }
 
  double  f4()  {
        return(fl2);
  }
 
  double  f5()  {
        return(dl2);
  }
 
  double  f6()  {
        return(ldl2);
  }
 
  long double  f7()  {
        return(fl3);
  }
 
  long double  f8()  {
        return(dl3);
  }
 
  long double  f9()  {
        return(ldl3);
  }
 
  void  f10()  {
        return;
  }
