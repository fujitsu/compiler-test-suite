#include <stdio.h>

#define NULL  0
int main()
 {
 char   a[10],(*ap)[10],c[10],c2[10],*cp;
 int    i,f(),g(),(*fp)(),*ip,zero=0;
 union tagun {
     int  i;
     struct tagst {
         short a;
         short b;
     } stz;
 } un={ 5 };
 struct tagst stx,sty,*stp;
 union  tagun unx,uny,*unp;
 enum { en1,en2,en3 } en,*enp;

 printf(" ***  test start. ***\n");

 i = 10;
 if (i != 10)
     printf(" ***  test 1-1 error ***\n");

 if (sizeof(i) != zero+4)
     printf(" ***  test 1-2 error ***\n");

 ip = &i;
 if (*ip != 10)
     printf(" ***  test 1-3 error ***\n");

 if (i++ != 10 || i != 11)
     printf(" ***  test 1-4 error ***\n");


 c[0] = c2[0];
 if (*c != *c2)
     printf(" ***  test 2-1 error ***\n");

 if (sizeof(c) != zero+10)
     printf(" ***  test 2-2 error ***\n");

 a[0] = 5;
 cp = a;
 if ( *cp != 5 )
     printf(" ***  test 2-3 error ***\n");

 ap = (char (*)[])a;
 if ( *ap[0] != 5 )
     printf(" ***  test 2-4 error ***\n");

 if ( a[0]++ != 5 || a[0] != 6)
     printf(" ***  test 2-5 error ***\n");


 stx.a=stx.b=0; sty.a=1; sty.b=2;
 stx = sty;
 if (stx.a != 1 || stx.b != 2)
     printf(" ***  test 3-1 error ***\n");

 stx.b = sty.a;
 if (stx.b != 1)
     printf(" ***  test 3-2 error ***\n");

 if (sizeof(stx) != 4+zero)
     printf(" ***  test 3-3 error ***\n");

 stp = &stx;
 if (stp->a != 1 || stp->b != 1)
     printf(" ***  test 3-4 error ***\n");

 if ((stx.a)-- != 1 && stx.a != 0)
     printf(" ***  test 3-5 error ***\n");


#if _WIN32 || __i386__ || __i386 || __x86_64__ || __aarch64__
 if (un.i != un.stz.a)
#else
 if (un.i != un.stz.b)
#endif
     printf(" ***  test 4-1 error ***\n");

 if (sizeof(un) != 4+zero)
     printf(" ***  test 4-2 error ***\n");

 unp = &un;
#if _WIN32 || __i386__ || __i386 ||__x86_64__ || __aarch64__
 if (unp->i != 5 || unp->stz.a != 5)
#else
 if (unp->i != 5 || unp->stz.b != 5)
#endif
     printf(" ***  test 4-3 error ***\n");

 if ((un.i)-- != 5 && un.stz.b != 4)
     printf(" ***  test 4-4 error ***\n");

 en = en2;
 if (en != 1)
     printf(" ***  test 5-1 error ***\n");

 if (sizeof(en) != 4+zero)
     printf(" ***  test 5-2 error ***\n");

 enp = &en;
 if (*enp != 1)
     printf(" ***  test 5-3 error ***\n");

 if (en++ != 1 && en != 2)
     printf(" ***  test 5-4 error ***\n");


 fp = f;
 if ((*fp)() != 100)
     printf(" ***  test 6-1 ng ***\n");

 fp = g;
 if ((*fp)() != 10)
     printf(" ***  test 6-2 ng ***\n");

 printf(" ***  test end. ***\n");
 }

 int 
f (void)
 {
    return 100;
 }

 int 
g (void)
 {
    return 10;
 }
