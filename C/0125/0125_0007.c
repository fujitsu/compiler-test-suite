#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#undef h
#define h() 100
#if h() == 100
   printf(" *** O K (26-01) *** \n");
#else
   printf(" *** N G (26-01) *** \n");
#endif
 
#undef b
#define b( ) 100
#if b( ) == 100
   printf(" *** O K (26-02) *** \n");
#else
   printf(" *** N G (26-02) *** \n");
#endif
 
#undef c
#define c(x) x
#if c(10) == 10
   printf(" *** O K (26-03) *** \n");
#else
   printf(" *** N G (26-03) *** \n");
#endif
 
#undef d
#define d(x,y) x+y
#if d(1,2) == 3
   printf(" *** O K (26-04) *** \n");
#else
   printf(" *** N G (26-04) *** \n");
#endif
 
#undef e
#define e(x1,x2,x3,x4,x5,x6,x7,x8,x9,x10, \
x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,  \
x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,  \
x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,  \
x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,  \
x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,  \
x61,x62,x63,x64,x65,x66,x67,x68,x69,x70,  \
x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,  \
x81,x82,x83,x84,x85,x86,x87,x88,x89,x90,  \
x91,x92,x93,x94,x95,x96,x97,x98,x99,x100) \
 x1  + x2  + x3  + x4  + x5  + x6  + x7  + x8  + x9  + x10 + \
 x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 + \
 x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 + x30 + \
 x31 + x32 + x33 + x34 + x35 + x36 + x37 + x38 + x39 + x40 + \
 x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48 + x49 + x50 + \
 x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60 + \
 x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + \
 x71 + x72 + x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 + \
 x81 + x82 + x83 + x84 + x85 + x86 + x87 + x88 + x89 + x90 + \
 x91 + x92 + x93 + x94 + x95 + x96 + x97 + x98 + x99 + x100
 
#if e(1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1,           \
      1,1,1,1,1,1,1,1,1,1) == 100
 
   printf(" *** O K (26-05) *** \n");
#else
   printf(" *** N G (26-05) *** \n");
#endif
 
#undef f
#define f(  x,y) x+y
#if f(1,2) == 3
   printf(" *** O K (26-06) *** \n");
#else
   printf(" *** N G (26-06) *** \n");
#endif
 
#undef g
#define g(xx) xx
#if g(100) == 100
   printf(" *** O K (26-07) *** \n");
#else
   printf(" *** N G (26-07) *** \n");
#endif
 
 
   printf(" TEST END \n");
 
}
