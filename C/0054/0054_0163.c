#include<stdio.h>
 

int main()  {
     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              char   f1(),f2(),f3(),f4();
     unsigned char   f5(),f6(),f7(),f8();
              short  f9(),f10(),f11(),f12();
     unsigned short  f13(),f14(),f15(),f16();

  printf("01 TEST-START \n");

     a1=f1();
     if(a1==1)
        printf("01 1-1 TEST -O  K- \n");
     else
        printf("01 1-1 TEST - NG - \n");

     a2=f2();
     if(a2==2)
        printf("01 1-2 TEST -O  K- \n");
     else
        printf("01 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==3)
        printf("01 1-3 TEST -O  K- \n");
     else
        printf("01 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==4)
        printf("01 1-4 TEST -O  K- \n");
     else
        printf("01 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==1)
        printf("01 2-1 TEST -O  K- \n");
     else
        printf("01 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==2)
        printf("01 2-2 TEST -O  K- \n");
     else
        printf("01 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==3)
        printf("01 2-3 TEST -O  K- \n");
     else
        printf("01 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==4)
        printf("01 2-4 TEST -O  K- \n");
     else
        printf("01 2-4 TEST - NG - \n");

     c1=f9();
     if(c1==1)
        printf("01 3-1 TEST -O  K- \n");
     else
        printf("01 3-1 TEST - NG - \n");

     c2=f10();
     if(c2==2)
        printf("01 3-2 TEST -O  K- \n");
     else
        printf("01 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==3)
        printf("01 3-3 TEST -O  K- \n");
     else
        printf("01 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==4)
        printf("01 3-4 TEST -O  K- \n");
     else
        printf("01 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==1)
        printf("01 4-1 TEST -O  K- \n");
     else
        printf("01 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==2)
        printf("01 4-2 TEST -O  K- \n");
     else
        printf("01 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==3)
        printf("01 4-3 TEST -O  K- \n");
     else
        printf("01 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==4)
        printf("01 4-4 TEST -O  K- \n");
     else
        printf("01 4-4 TEST - NG - \n");

  printf("01 TEST-END \n");
}

  char f1()  {
        return((char)1);
  }

  char f2()  {
        return((unsigned char)2);
  }

  char f3()  {
        return((short)3);
  }

  char f4()  {
        return((unsigned short)4);
  }

  unsigned char  f5()  {
        return((char)1);
  }

  unsigned char  f6()  {
        return((unsigned char)2);
  }

  unsigned char  f7()  {
        return((short)3);
  }

  unsigned char  f8()  {
        return((unsigned short)4);
  }

  short  f9()  {
        return((char)1);
  }

  short  f10()  {
        return((unsigned char)2);
  }

  short  f11()  {
        return((short)3);
  }

  short  f12()  {
        return((unsigned short)4);
  }

  unsigned short  f13()  {
        return((char)1);
  }

  unsigned short  f14()  {
        return((unsigned char)2);
  }

  unsigned short  f15()  {
        return((short)3);
  }

  unsigned short  f16()  {
        return((unsigned short)4);
  }
