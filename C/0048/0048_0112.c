#include <stdio.h>

 union tag1 {
     char *p;
#if LONG64 || __aarch64__
     long   i;
#else
     int   i;
#endif
 };
 union tag2 {
     char c1;
     char c2;
 };
int main()
 {
 union tag1 fnc1(union tag1 un, int i);
#if __aarch64__
 long fnc2(long i, union tag1 un);
#else
 int fnc2(int i, union tag1 un);
#endif
 char fnc3(union tag2 *unp);
 short fnc4(const union tag2);
 float fnc5(union tag2 *[2]);

 union tag1 un1 = { "abc" },un1r;
 union tag2 un2 = { 255 },*un2p=&un2;
 const union tag2 unc = { 'a' };
 static union tag2 un2x[2] = { '1', 'z' };
 union tag2 *un2xp[2] = { &un2x[0], &un2x[1] };

 printf(" ***  test start *** \n");

 un1r = fnc1(un1,100);
 if (*(un1r.p) != 'a' || un1r.p[2] != 'c')
     printf(" ***  test 1-2 error ***\n");

 if (fnc2(un1.i,un1) != un1.i)
     printf(" ***  test 2-2 error ***\n");

 if (fnc3(un2p))
     printf(" ***  test 3-2 error ***\n");

 if (fnc4(unc) != 194)
     printf(" ***  test 4-2 error ***\n");

 if (fnc5(un2xp) != 49.0)
     printf(" ***  test 5-2 error ***\n");

 printf(" ***  test end *** \n");
 }

 union tag1 fnc1(union tag1 un, int i)
 {
 if (*(char *)un.i != 'a' || *((char *)un.i+1) != 'b' ||
     *((char *)un.i+2) != 'c' || *((char *)un.i+3) != '\0' || i != 100)
     printf(" ***  test 1-1 error ***\n");
 return un;
 }

#if __aarch64__
 long fnc2(long i, union tag1 un)
#else
 fnc2(int i, union tag1 un)
#endif
 {
 if (un.i != i || *((char *)un.i) != 'a' || *((char *)un.i+2) != 'c')
     printf(" ***  test 2-1 error ***\n");
 return un.i;
 }

 char fnc3(union tag2 *unp)
 {
#if S_CHAR || __aarch64__
 if (unp->c1 != -1  || unp->c2 != -1 )
#else
 if (unp->c1 != 0xff|| unp->c2 != 0xff)
#endif
     printf(" ***  test 3-1 error ***\n");
 return unp->c1-unp->c2;
 }

 short fnc4(un)
 const union tag2 un;
 {
 if (un.c1 != 'a' || un.c2 != 'b'-1)
     printf(" ***  test 4-1 error ***\n");
 return un.c2+un.c1;
 }

 float fnc5(union tag2 *un[2])
 {
 float f=1.0;
 if ((*un[0]).c1 != '1' || un[0]->c2 != '1' ||
     un[1]->c1 != 'z' || (*un[1]).c2 != 'z')
     printf(" ***  test 5-1 error ***\n");
 return f*un[0]->c2;
 }
