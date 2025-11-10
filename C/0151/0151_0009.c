
















  #include <stdio.h>
  #include "001.h"







int func1(int i)
{
  switch (i){
    case 4098 : return 1;
    default   : return 0;
  }
}




int main()
{



  int int_wk1;
  int int_wk2;

  int array[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};







  header("","enum specifier test proc.") ;



{
  enum hue{ chartreuse, burgundy, claret, winedark};
  enum hue col,*cp;

  col = claret;
  cp = &col;

  ichck("DTE01_01",2,*cp,"enumerator list and nothing constant test");
}



#if !defined(os2)
{
  enum enum02{ a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,
               b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,
               c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,
               d0=10,d1,d2,d3,d4,d5,d6,d7,d8,d9,
               e0,e1,e2,e3,e4,e5,e6,e7,e8,e9,
               f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,
               g0,g1,g2,g3,g4,g5,g6,g7,g8,g9,
               h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,
               i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,
               j0=10,j1,j2,j3,j4,j5,j6,j7,j8,j9,
               k0,k1,k2,k3,k4,k5,k6,k7,k8,k9,
               l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,
               m0,m1,m2,m3,m4,m5,m6 = 2147483647 };
  int_wk1 = m6 - array[j7] - array[d8];

  ichck("DTE01_02",2147483612,int_wk1,
        "enumerator list = 2147483647 and array constant test");
}
#endif



{
  enum enum03{ one=255 };

  int_wk1 = one * 2;

  ichck("DTE01_03",510,int_wk1,
        "enumerator list and constant = 255 test");
}



{
  enum { arg1, arg2, arg3, arg4 = 4095,
         arg5, arg6, arg7, arg8, arg9 };

  int_wk1 = func1(arg7);
  
  ichck("DTE01_04",1,int_wk1,"argument enum data test");
}



{
  enum { a0=1,a1,a2,a3,a4,a5,a6,a7,a8,a9,
         b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,
         c0=102/3*(-2)+8-32708,c1,c2,c3,c4,c5,c6,c7,c8,c9,
         d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,
         e0=1,e1,e2,e3,e4,e5,e6,e7,e8,e9,
         f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,
         g0=1,g1,g2,g3,g4,g5,g6,g7,g8,g9,
         h0,h1,h2,h3,h4,h5,h6,h7,h8,h9,
         i0=1,i1,i2,i3,i4,i5,i6,i7,i8,i9,
         j0,j1,j2,j3,j4,j5,j6,j7,j8,j9,
         k0=1,k1,k2,k3,k4,k5,k6,k7,k8,k9,
         l0,l1,l2,l3,l4,l5,l6,l7,l8,l9,
         m0=1,m1,m2,m3,m4,m5,m6,m7,m8,m9 };

  int_wk1 = -32767;
  int_wk2 = 0;

  switch(int_wk1){
    case c1 : while (int_wk2 < f9)
                int_wk2++;
              break;
    case e1 : for (int_wk2 = k0; int_wk2 < h5; int_wk2++)
              break;
    case g2 : do
                int_wk2++;
              while(int_wk2 < j2);
              break;
    default : int_wk2 = m9;
              break;
  }

  ichck("DTE01_05",20,int_wk2,
        "enum data selection and iteration statement test");
}




  header("","enum specifier test proc.") ;
}
