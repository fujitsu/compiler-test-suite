#include <stdio.h>
int main( ) {
struct t {
          unsigned long long int o1:63;
          unsigned long long int a : 1; 
                                        
          unsigned long long int o2: 1;
          unsigned long long int b :63; 

          unsigned long long int c :63; 
          unsigned long long int o3: 1;

          unsigned long long int o4:31;
          unsigned long long int d : 2; 
          unsigned long long int o5:31;

          unsigned long long int e :32; 
          unsigned long long int o6:32;

          unsigned long long int o7:32; 
          unsigned long long int f :32;
                                        
          unsigned long long int o8: 30;
          unsigned long long int  g: 1;
          unsigned long long int o9 :33;
                                        
          unsigned long long int oa: 30;
          unsigned long long int  h: 2;
          unsigned long long int ob :32;
};
struct t x={0,1,0,101,102,0,0,3,0,104,0,0,105,0,1,0,0,3,0};
struct t y;

  if (x.h ==   3) printf("**  (1) ** ok\n");
  if (x.g ==   1) printf("**  (2) ** ok\n");
  if (x.f == 105) printf("**  (3) ** ok\n");
  if (x.e == 104) printf("**  (4) ** ok\n");
  if (x.d ==   3) printf("**  (5) ** ok\n");
  if (x.c == 102) printf("**  (6) ** ok\n");
  if (x.b == 101) printf("**  (7) ** ok\n");
  if (x.a ==   1) printf("**  (8) ** ok\n");
           y.o1=1;
  y.h=3;
           y.o2=1;
  y.g=1;
           y.o3=1;
  y.f=205;
           y.o4=1;
  y.e=204;
           y.o5=1;
  y.d=  3;
           y.o6=1;
  y.c=202;
           y.o7=1;
  y.b=201;
           y.o8=1;
  y.a=  1;
           y.o9=1;
           y.oa=1;
           y.ob=1;
  if (y.h ==   3) printf("**  (9) ** ok\n");
  if (y.g ==   1) printf("**  (10) ** ok\n");
  if (y.f == 205) printf("**  (11) ** ok\n");
  if (y.e == 204) printf("**  (12) ** ok\n");
  if (y.d ==   3) printf("**  (13) ** ok\n");
  if (y.c == 202) printf("**  (14) ** ok\n");
  if (y.b == 201) printf("**  (15) ** ok\n");
  if (y.a ==   1) printf("**  (16) ** ok\n");
  if (x.o1 == 0
   && x.o2 == 0
   && x.o3 == 0
   && x.o4 == 0
   && x.o5 == 0
   && x.o6 == 0
   && x.o7 == 0
   && x.o8 == 0
   && x.o9 == 0
   && x.oa == 0
   && x.ob == 0 ) printf("**  (17) ** ok\n");
  if (y.o1 == 1
   && y.o2 == 1
   && y.o3 == 1
   && y.o4 == 1
   && y.o5 == 1
   && y.o6 == 1
   && y.o7 == 1
   && y.o8 == 1
   && y.o9 == 1
   && y.oa == 1
   && y.ob == 1 ) printf("**  (18) ** ok\n");
}
                        
  
