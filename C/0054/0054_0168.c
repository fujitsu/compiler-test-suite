#include<stdio.h>
 

     static struct tag  {
        char  sc1;
        char  sc2;
        char  sc3;
        char  sc4;
       short  ss1;
       short  ss2;
       short  ss3;
       short  ss4;
         int  si1;
         int  si2;
         int  si3;
         int  si4;
        long  sl1;
        long  sl2;
        long  sl3;
        long  sl4;
    } st[2];
int main()  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

     unsigned char   f1(),f2(),f3(),f4();
     unsigned short  f5(),f6(),f7(),f8();
     unsigned int    f9(),f10(),f11(),f12();
     unsigned long   f13(),f14(),f15(),f16();

    st[0].sc1=1,st[0].sc2=2,st[0].sc3=3,st[0].sc4=4;
    st[0].ss1=5,st[0].ss2=6,st[0].ss3=7,st[0].ss4=8;
    st[1].si1=9,st[1].si2=10,st[1].si3=11,st[1].si4=12;
    st[1].sl1=13,st[1].sl2=14,st[1].sl3=15,st[1].sl4=16;

  printf("06 TEST-START \n");

     a1=f1();
     if(a1==1)
        printf("06 1-1 TEST -O  K- \n");
     else
        printf("06 1-1 TEST - NG - \n");

     a2=f2();
     if(a2==5)
        printf("06 1-2 TEST -O  K- \n");
     else
        printf("06 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==9)
        printf("06 1-3 TEST -O  K- \n");
     else
        printf("06 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==13)
        printf("06 1-4 TEST -O  K- \n");
     else
        printf("06 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==2)
        printf("06 2-1 TEST -O  K- \n");
     else
        printf("06 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==6)
        printf("06 2-2 TEST -O  K- \n");
     else
        printf("06 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==10)
        printf("06 2-3 TEST -O  K- \n");
     else
        printf("06 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==14)
        printf("06 2-4 TEST -O  K- \n");
     else
        printf("06 2-4 TEST - NG - \n");

     c1=f9();
     if(c1==3)
        printf("06 3-1 TEST -O  K- \n");
     else
        printf("06 3-1 TEST - NG - \n");

     c2=f10();
     if(c2==7)
        printf("06 3-2 TEST -O  K- \n");
     else
        printf("06 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==11)
        printf("06 3-3 TEST -O  K- \n");
     else
        printf("06 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==15)
        printf("06 3-4 TEST -O  K- \n");
     else
        printf("06 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==4)
        printf("06 4-1 TEST -O  K- \n");
     else
        printf("06 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==8)
        printf("06 4-2 TEST -O  K- \n");
     else
        printf("06 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==12)
        printf("06 4-3 TEST -O  K- \n");
     else
        printf("06 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==16)
        printf("06 4-4 TEST -O  K- \n");
     else
        printf("06 4-4 TEST - NG - \n");

  printf("06 TEST-END \n");
}

  unsigned char  f1()  {
        return(st[0].sc1);
  }

  unsigned char  f2()  {
        return(st[0].ss1);
  }

  unsigned char  f3()  {
        return(st[1].si1);
  }

  unsigned char  f4()  {
        return(st[1].sl1);
  }

  unsigned short  f5()  {
        return(st[0].sc2);
  }

  unsigned short  f6()  {
        return(st[0].ss2);
  }

  unsigned short  f7()  {
        return(st[1].si2);
  }

  unsigned short  f8()  {
        return(st[1].sl2);
  }

  unsigned int  f9()  {
        return(st[0].sc3);
  }

  unsigned int  f10()  {
        return(st[0].ss3);
  }

  unsigned int  f11()  {
        return(st[1].si3);
  }

  unsigned int  f12()  {
        return(st[1].sl3);
  }

  unsigned long  f13()  {
        return(st[0].sc4);
  }

  unsigned long  f14()  {
        return(st[0].ss4);
  }

  unsigned long  f15()  {
        return(st[1].si4);
  }

  unsigned long  f16()  {
        return(st[1].sl4);
  }
