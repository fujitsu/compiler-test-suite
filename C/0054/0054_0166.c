#include<stdio.h>
 

     struct tag  {
                char  sc1;
                char  sc2;
                char  sc3;
                char  sc4;
       unsigned char  uc1;
       unsigned char  uc2;
       unsigned char  uc3;
       unsigned char  uc4;
                short ss1;
                short ss2;
                short ss3;
                short ss4;
       unsigned short us1;
       unsigned short us2;
       unsigned short us3;
       unsigned short us4;
    } st1,*st2=&st1;
int 
main (void)  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              int   f1(),f2(),f3(),f4();
     unsigned int   f5(),f6(),f7(),f8();
              long  f9(),f10(),f11(),f12();
     unsigned long  f13(),f14(),f15(),f16();

    st2->sc1=1,st2->sc2=2,st2->sc3=3,st2->sc4=4;
    st2->uc1=1,st2->uc2=2,st2->uc3=3,st2->uc4=4;
    st2->ss1=1,st2->ss2=2,st2->ss3=3,st2->ss4=4;
    st2->us1=1,st2->us2=2,st2->us3=3,st2->us4=4;

  printf("04 TEST-START \n");

     a1=f1();
     if(a1==1)
        printf("04 1-1 TEST -O  K- \n");
     else
        printf("04 1-1 TEST - NG - \n");

     a2=f2();
     if(a2==1)
        printf("04 1-2 TEST -O  K- \n");
     else
        printf("04 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==1)
        printf("04 1-3 TEST -O  K- \n");
     else
        printf("04 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==1)
        printf("04 1-4 TEST -O  K- \n");
     else
        printf("04 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==2)
        printf("04 2-1 TEST -O  K- \n");
     else
        printf("04 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==2)
        printf("04 2-2 TEST -O  K- \n");
     else
        printf("04 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==2)
        printf("04 2-3 TEST -O  K- \n");
     else
        printf("04 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==2)
        printf("04 2-4 TEST -O  K- \n");
     else
        printf("04 2-4 TEST - NG - \n");

     c1=f9();
     if(c1==3)
        printf("04 3-1 TEST -O  K- \n");
     else
        printf("04 3-1 TEST - NG - \n");

     c2=f10();
     if(c2==3)
        printf("04 3-2 TEST -O  K- \n");
     else
        printf("04 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==3)
        printf("04 3-3 TEST -O  K- \n");
     else
        printf("04 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==3)
        printf("04 3-4 TEST -O  K- \n");
     else
        printf("04 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==4)
        printf("04 4-1 TEST -O  K- \n");
     else
        printf("04 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==4)
        printf("04 4-2 TEST -O  K- \n");
     else
        printf("04 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==4)
        printf("04 4-3 TEST -O  K- \n");
     else
        printf("04 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==4)
        printf("04 4-4 TEST -O  K- \n");
     else
        printf("04 4-4 TEST - NG - \n");

  printf("04 TEST-END \n");
}

  int 
f1 (void)  {
        return(st2->sc1);
  }

  int 
f2 (void)  {
        return(st2->uc1);
  }

  int 
f3 (void)  {
        return(st2->ss1);
  }

  int 
f4 (void)  {
        return(st2->us1);
  }

  unsigned int 
f5 (void)  {
        return(st2->sc2);
  }

  unsigned int 
f6 (void)  {
        return(st2->uc2);
  }

  unsigned int 
f7 (void)  {
        return(st2->ss2);
  }

  unsigned int 
f8 (void)  {
        return(st2->us2);
  }

  long 
f9 (void)  {
        return(st2->sc3);
  }

  long 
f10 (void)  {
        return(st2->uc3);
  }

  long 
f11 (void)  {
        return(st2->ss3);
  }

  long 
f12 (void)  {
        return(st2->us3);
  }

  unsigned long 
f13 (void)  {
        return(st2->sc4);
  }

  unsigned long 
f14 (void)  {
        return(st2->uc4);
  }

  unsigned long 
f15 (void)  {
        return(st2->ss4);
  }

  unsigned long 
f16 (void)  {
        return(st2->us4);
  }
