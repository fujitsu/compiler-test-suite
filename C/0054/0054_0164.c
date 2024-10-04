#include<stdio.h>
 

     struct tag {
                int  i1 :1;
       unsigned int  ui1:2;
                long l1 :3;
       unsigned long ul1:4;
                int  i2 :5;
       unsigned int  ui2:6;
                long l2 :7;
       unsigned long ul2:8;
                int  i3 :1;
       unsigned int  ui3:2;
                long l3 :3;
       unsigned long ul3:4;
                int  i4 :5;
       unsigned int  ui4:6;
                long l4 :7;
       unsigned long ul4:8;
     } st;
int 
main (void)  {

 

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              int    f1(),f2(),f3(),f4();
     unsigned int    f5(),f6(),f7(),f8();
              long   f9(),f10(),f11(),f12();
     unsigned long   f13(),f14(),f15(),f16();

  printf("02 TEST-START \n");

     a1=f1();

#if defined __GNUC__
  if(a1==-1)
    printf("02 1-1 TEST -O  K- \n");
  else
    printf("02 1-1 TEST - NG - \n");
#else
  if(a1==1)
    printf("02 1-1 TEST -O  K- \n");
  else
    printf("02 1-1 TEST - NG - \n");
#endif

     a2=f2();
     if(a2==1)
        printf("02 1-2 TEST -O  K- \n");
     else
        printf("02 1-2 TEST - NG - \n");

     a3=f3();
     if(a3==1)
        printf("02 1-3 TEST -O  K- \n");
     else
        printf("02 1-3 TEST - NG - \n");

     a4=f4();
     if(a4==1)
        printf("02 1-4 TEST -O  K- \n");
     else
        printf("02 1-4 TEST - NG - \n");

     b1=f5();
     if(b1==2)
        printf("02 2-1 TEST -O  K- \n");
     else
        printf("02 2-1 TEST - NG - \n");

     b2=f6();
     if(b2==2)
        printf("02 2-2 TEST -O  K- \n");
     else
        printf("02 2-2 TEST - NG - \n");

     b3=f7();
     if(b3==2)
        printf("02 2-3 TEST -O  K- \n");
     else
        printf("02 2-3 TEST - NG - \n");

     b4=f8();
     if(b4==2)
        printf("02 2-4 TEST -O  K- \n");
     else
        printf("02 2-4 TEST - NG - \n");

     c1=f9();

#if defined __GNUC__
  if(c1==-1)
    printf("02 3-1 TEST -O  K- \n");
  else
    printf("02 3-1 TEST - NG - \n");
#else
  if(c1==1)
    printf("02 3-1 TEST -O  K- \n");
  else
    printf("02 3-1 TEST - NG - \n");
#endif

     c2=f10();
     if(c2==3)
        printf("02 3-2 TEST -O  K- \n");
     else
        printf("02 3-2 TEST - NG - \n");

     c3=f11();
     if(c3==3)
        printf("02 3-3 TEST -O  K- \n");
     else
        printf("02 3-3 TEST - NG - \n");

     c4=f12();
     if(c4==4)
        printf("02 3-4 TEST -O  K- \n");
     else
        printf("02 3-4 TEST - NG - \n");

     d1=f13();
     if(d1==1)
        printf("02 4-1 TEST -O  K- \n");
     else
        printf("02 4-1 TEST - NG - \n");

     d2=f14();
     if(d2==3)
        printf("02 4-2 TEST -O  K- \n");
     else
        printf("02 4-2 TEST - NG - \n");

     d3=f15();
     if(d3==4)
        printf("02 4-3 TEST -O  K- \n");
     else
        printf("02 4-3 TEST - NG - \n");

     d4=f16();
     if(d4==4)
        printf("02 4-4 TEST -O  K- \n");
     else
        printf("02 4-4 TEST - NG - \n");

  printf("02 TEST-END \n");
}

  int 
f1 (void)  {
        st.i1=1;
        return(st.i1);
  }

  int 
f2 (void)  {
        st.ui1=1;
        return(st.ui1);
  }

  int 
f3 (void)  {
        st.l1=1;
        return(st.l1);
  }

  int 
f4 (void)  {
        st.ul1=1;
        return(st.ul1);
  }

  unsigned int 
f5 (void)  {
        st.i2=2;
        return(st.i2);
  }

  unsigned int 
f6 (void)  {
        st.ui2=2;
        return(st.ui2);
  }

  unsigned int 
f7 (void)  {
        st.l2=2;
        return(st.l2);
  }

  unsigned int 
f8 (void)  {
        st.ul2=2;
        return(st.ul2);
  }

  long 
f9 (void)  {
        st.i3=1;
        return(st.i3);
  }

  long 
f10 (void)  {
        st.ui3=3;
        return(st.ui3);
  }

  long 
f11 (void)  {
        st.l3=3;
        return(st.l3);
  }

  long 
f12 (void)  {
        st.ul3=4;
        return(st.ul3);
  }

  unsigned long 
f13 (void)  {
        st.i4=1;
        return(st.i4);
  }

  unsigned long 
f14 (void)  {
        st.ui4=3;
        return(st.ui4);
  }

  unsigned long 
f15 (void)  {
        st.l4=4;
        return(st.l4);
  }

  unsigned long 
f16 (void)  {
        st.ul4=4;
        return(st.ul4);
  }
