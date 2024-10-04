#include <stdio.h>

 typedef const  int c_type;
 typedef const short cs_type;
 const  int exc = 0xffffffff;
 const long extc;
 const static int long signed stexc = 0x7fffffff;
int 
main (void)
 {
 const  int c = 0x7fffffff;
 signed const sc = exc;
 const unsigned uc = c+1;
#if LONG64   || __x86_64__ || __aarch64__
 auto const long ac = 0x80000000;
#else
 auto const ac = 0x80000000;
#endif
 const unsigned short cus = c;
 int register const long *rlc;
 long signed * const slcp = (long * const)&ac;
 c_type   c2=1.5, *c2p, c2a[2]={100,-100};
 cs_type  csa[5] = { -1,-1,-1,-1,-1 };
 int cfnc(short int const unsigned cus);
 const int cfnc2(const  int c, const long *cp) ;
 struct sttag1 { int i; const long l; } st1 = { -1, -1 };
 const struct sttag2 { int i; char c; } cst1 = { -1, 255 };
 const union untag1 { int i; long l; } cun1 = { -1 };
 union untag2 { int i; const long cl; } const cun2 = { -1 };
 const enum entag { en1, en2 } en = 1;
 extern const char ca[];

 printf(" ***  test start ****** \n");

#if INT64
 if (exc != 4294967295)
#else
 if (exc != -1)
#endif
     printf(" ***  test 1  error ***\n");

 if (extc != 0)
     printf(" ***  test 2  error ***\n");

 if (stexc != 2147483647)
     printf(" ***  test 3  error ***\n");

 if (c != 2147483647)
     printf(" ***  test 4  error ***\n");

#if INT64
 if (sc != 4294967295)
#else
 if (sc != -1)
#endif
     printf(" ***  test 5  error ***\n");

 if (uc != 2147483648)
     printf(" ***  test 6  error ***\n");

 if (ac-1 != 2147483647)
     printf(" ***  test 7  error ***\n");

 if (cus != 65535)
     printf(" ***  test 8  error ***\n");

 rlc = (const long *)&extc;
 if (*rlc != 0)
     printf(" ***  test 9  error ***\n");

#if INT64 || LONG64   || __x86_64__  || __aarch64__
 if (*slcp != 2147483648)
#else
 if (*slcp != -2147483648)
#endif
     printf(" ***  test 10 error ***\n%lx\n",*slcp);

 if (c2 != 1)
     printf(" ***  test 11 error ***\n");

 c2p = c2a+1;
 if (*c2a != 100 || *(c2a+1) != -c2a[0] || c2p[0] != -100)
     printf(" ***  test 12 error ***\n");

 if (csa[0] != -1 || csa[1]+1 != 0 || csa[2]-65535 != -65536 ||
     csa[3]-1 != -2 || (unsigned short)csa[4] != 65535) {
     printf(" ***  test 13 error ***\n");
 }

 if (cfnc(cus) || cus != 65535) {
     printf(" ***  test 14 error ***\n");
 }

 if (cfnc2(c,rlc))
     printf(" ***  test 15 error ***\n");

 if (st1.i != -1 || st1.l != -1)
     printf(" ***  test 16 error ***\n");

 if (cst1.i != -1 || cst1.c != -1)
     printf(" ***  test 17  error ***\n");

 if (cun1.i != -1 ||
#if LONG64  
 cun1.l != 0xffffffff00000000)
#elif __x86_64__ || __aarch64__
 cun1.l != 0xffffffff)
#else
 cun1.l != -1)
#endif
     printf(" ***  test 18 error ***\n");

 if (cun2.i != -1 ||
#if LONG64 
 cun2.cl != 0xffffffff00000000)
#elif __x86_64__ || __aarch64__
 cun2.cl != 0xffffffff)
#else
 cun2.cl != -1)
#endif
     printf(" ***  test 19 error ***\n");

 if (en2 != en)
     printf(" ***  test 20 error ***\n");

   {
     {
         const int cc=c;

         if (cc != 0x7fffffff)
             printf(" ***  test 22 error ***\n");
     }
   }

 printf(" ***  test end ****** \n");
 }
 const char ca[5];

 int 
cfnc (
    short int const unsigned x             
)
 {

 if(ca[0]!=0 || ca[1]!=0 || ca[2]!=0 || ca[3]!=0 || ca[4]!=0)
     return 1;

 if (x != 65535)
     return 1;
 else
     return 0;
 }

 const int  cfnc2(const int  c, const long int *cp)       
 {
 if (c != 0x7fffffff || *cp != 0)
     return 1;
 else
     return 0;
 }

