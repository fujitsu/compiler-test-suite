#include <string.h>
#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
 
#define  f() 100
   #if (f() == 100)
      printf(" *** O K (45-01) ***  \n");
   #else
      printf(" === N G (45-01) ===  \n");
   #endif
 
#define  x(x)  # x
#define  y(y)  x(y)
 
#undef  f
#define  f(x)  x
   if (!memcmp(y(f( 123
456 )),"123 456",7))
      printf(" *** O K (45-03) ***  \n");
   else
      printf(" === N G (45-03) ===  \n");
 
   if (!memcmp(y(f( 123/*abcdefg*/456 )) , "123 456" ,7))
      printf(" *** O K (45-04) ***  \n");
   else
      printf(" === N G (45-04) ===  \n");
 
#ifdef __OLDCPP__
   if (!memcmp(y(f( 123           456 )) , "123           456" ,17))
#else
   if (!memcmp(y(f( 123           456 )) , "123 456" ,7))
#endif
      printf(" *** O K (45-05) ***  \n");
   else
      printf(" === N G (45-05) ===  \n");
 
 
#if  f(123456) == 123456
      printf(" *** O K (45-06) ***  \n");
#else
      printf(" === N G (45-06) ===  \n");
#endif
 
#define  ff(x,y)  x + y
#if  ff(123,456) == 579
      printf(" *** O K (45-07) ***  \n");
#else
      printf(" === N G (45-07) ===  \n");
#endif
 
#define  f100(\
f1 ,f2 ,f3 ,f4 ,f5 ,f6 ,f7 ,f8 ,f9 ,f10,\
f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,\
f21,f22,f23,f24,f25,f26,f27,f28,f29,f30,\
f31,f32,f33,f34,f35,f36,f37,f38,f39,f40,\
f41,f42,f43,f44,f45,f46,f47,f48,f49,f50,\
f51,f52,f53,f54,f55,f56,f57,f58,f59,f60,\
f61,f62,f63,f64,f65,f66,f67,f68,f69,f70,\
f71,f72,f73,f74,f75,f76,f77,f78,f79,f80,\
f81,f82,f83,f84,f85,f86,f87,f88,f89,f90,\
f91,f92,f93,f94,f95,f96,f97,f98,f99,f100) \
 f1 +f2 +f3 +f4 +f5 +f6 +f7 +f8 +f9 +f10+\
 f11+f12+f13+f14+f15+f16+f17+f18+f19+f20+\
 f21+f22+f23+f24+f25+f26+f27+f28+f29+f30+\
 f31+f32+f33+f34+f35+f36+f37+f38+f39+f40+\
 f41+f42+f43+f44+f45+f46+f47+f48+f49+f50+\
 f51+f52+f53+f54+f55+f56+f57+f58+f59+f60+\
 f61+f62+f63+f64+f65+f66+f67+f68+f69+f70+\
 f71+f72+f73+f74+f75+f76+f77+f78+f79+f80+\
 f81+f82+f83+f84+f85+f86+f87+f88+f89+f90+\
 f91+f92+f93+f94+f95+f96+f97+f98+f99+f100
#if  f100(\
1,1,1,1,1,1,1,1,1,1,\
2,2,2,2,2,2,2,2,2,2,\
3,3,3,3,3,3,3,3,3,3,\
4,4,4,4,4,4,4,4,4,4,\
5,5,5,5,5,5,5,5,5,5,\
6,6,6,6,6,6,6,6,6,6,\
7,7,7,7,7,7,7,7,7,7,\
8,8,8,8,8,8,8,8,8,8,\
9,9,9,9,9,9,9,9,9,9,\
0,0,0,0,0,0,0,0,0,0) == 450
      printf(" *** O K (45-08) ***  \n");
#else
      printf(" === N G (45-08) ===  \n");
#endif
 
   printf(" TEST END \n");
 
}
