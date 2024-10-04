#include<stdio.h>
 

     struct tag  {
                int   si1;
                int   si2;
                int   si3;
                int   si4;
       unsigned int   ui1;
       unsigned int   ui2;
       unsigned int   ui3;
       unsigned int   ui4;
                long  sl1;
                long  sl2;
                long  sl3;
                long  sl4;
       unsigned long  ul1;
       unsigned long  ul2;
       unsigned long  ul3;
       unsigned long  ul4;
    } st1,*st2=&st1;

     int  i=0;
int main()  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              char   f1(),f2(),f3(),f4();
     unsigned char   f5(),f6(),f7(),f8();
              short  f9(),f10(),f11(),f12();
     unsigned short  f13(),f14(),f15(),f16();

    st2->si1=1,st2->si2=2,st2->si3=3,st2->si4=4;
    st2->ui1=1,st2->ui2=2,st2->ui3=3,st2->ui4=4;
    st2->sl1=1,st2->sl2=2,st2->sl3=3,st2->sl4=4;
    st2->ul1=1,st2->ul2=2,st2->ul3=3,st2->ul4=4;

  printf("05 TEST-START \n");

     a1=f1();
     if(a1==1)
        printf("05 1-1 TEST -O  K- \n");
     else
        printf("05 1-1 TEST - NG - \n");

     a2=f2();
     if(a2==1)
        printf("05 1-2 TEST -O  K- \n");
     else
        printf("05 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==1)
        printf("05 1-3 TEST -O  K- \n");
     else
        printf("05 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==1)
        printf("05 1-4 TEST -O  K- \n");
     else
        printf("05 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==2)
        printf("05 2-1 TEST -O  K- \n");
     else
        printf("05 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==2)
        printf("05 2-2 TEST -O  K- \n");
     else
        printf("05 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==2)
        printf("05 2-3 TEST -O  K- \n");
     else
        printf("05 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==2)
        printf("05 2-4 TEST -O  K- \n");
     else
        printf("05 2-4 TEST - NG - \n");

     c1=f9();
     if(c1==3)
        printf("05 3-1 TEST -O  K- \n");
     else
        printf("05 3-1 TEST - NG - \n");

     c2=f10();
     if(c2==3)
        printf("05 3-2 TEST -O  K- \n");
     else
        printf("05 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==3)
        printf("05 3-3 TEST -O  K- \n");
     else
        printf("05 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==3)
        printf("05 3-4 TEST -O  K- \n");
     else
        printf("05 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==4)
        printf("05 4-1 TEST -O  K- \n");
     else
        printf("05 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==4)
        printf("05 4-2 TEST -O  K- \n");
     else
        printf("05 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==4)
        printf("05 4-3 TEST -O  K- \n");
     else
        printf("05 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==4)
        printf("05 4-4 TEST -O  K- \n");
     else
        printf("05 4-4 TEST - NG - \n");

  printf("05 TEST-END \n");
}

  char  f1()  {
        return((st2+i)->si1);
  }

  char  f2()  {
        return((st2+i)->ui1);
  }

  char  f3()  {
        return((st2+i)->sl1);
  }

  char  f4()  {
        return((st2+i)->ul1);
  }

  unsigned char  f5()  {
        return((st2+i)->si2);
  }

  unsigned char  f6()  {
        return((st2+i)->ui2);
  }

  unsigned char  f7()  {
        return((st2+i)->sl2);
  }

  unsigned char  f8()  {
        return((st2+i)->ul2);
  }

  short  f9()  {
        return((st2+i)->si3);
  }

  short  f10()  {
        return((st2+i)->ui3);
  }

  short  f11()  {
        return((st2+i)->sl3);
  }

  short  f12()  {
        return((st2+i)->ul3);
  }

  unsigned short  f13()  {
        return((st2+i)->si4);
  }

  unsigned short  f14()  {
        return((st2+i)->ui4);
  }

  unsigned short  f15()  {
        return((st2+i)->sl4);
  }

  unsigned short  f16()  {
        return((st2+i)->ul4);
  }
