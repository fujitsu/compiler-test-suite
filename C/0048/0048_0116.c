#include <stdio.h>
void test23 (void);
void test21 (void);
void test10 (void);
void test9 (void);
void test8 (void);
void test7 (void);
void test6 (void);
void test5 (void);
void test4 (void);
void test3 (void);
void test2 (void);
void test1 (void);
int test3x (void);
void test0 (void);

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif

int main()
 {
 printf(" ***  test start ****** \n");
 test0();
 test1();
 test2();
 test3();
 test4();
 test5();
 test6();
 test7();
 test8();
 test9();
 test10();
 printf(" ***  test end ****** \n");
 }

 struct extag1;

 struct extag2 {
     int    i;
     long   l;
 };
 struct extag2;

 struct extag3;
 struct extag3 {
     int   i;
     char  c;
 };

void test0 (void)
 {
 struct extag3 stex3 = { 123456, 128 };
 if (stex3.i != 123456 || stex3.c != -128)
     printf(" ***  test 0-1 error ***\n");
 }

 struct extag44 {
     int    i;
#if INT64 || LONG64  
     __int32  s1,s2;
#elif __x86_64__ || __aarch64__
     int  s1,s2;
#else
     short  s1,s2;
#endif
     int    x;
 } stex41 = { -1, -1, -1, 0 };
 struct extag44;
 struct extag4 {
     unsigned int i;
     unsigned long l;
 } ;

 void test1 (void)                 
 {
 struct extag4 *stp;
 stp = (struct extag4 *)&stex41;
 if (stex41.i != -1 || stex41.s1 != -1 || stex41.s2 != -1 ||
#if INT64
      stp->i != 18446744073709551615 || stp->l != 18446744073709551615)
#elif LONG64  
    stp->i != 4294967295 || stp->l != 0xffffffff00000000)
#else
    stp->i != 4294967295 || stp->l != 4294967295)
#endif
     printf(" ***  test 1-1  error ***\n%x,%x,%x,%u,%lu\n",stex41.i,stex41.s1,stex41.s2,stp->i,stp->l);
 }

void test22 (stp)                              
 struct extag55 {
#if INT64
       __int32 i;
       int j;
#elif LONG64 
       __int32 i;
       long j;
#elif __x86_64__ || __aarch64__
       int i;
       long j;
#else
       int i,j;
#endif
} *stp;
 {
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
       if (stp->i != 0xffff7f7f || stp->j != -1)
#else
	 if (stp->i != 2139095039 || stp->j != -1)
#endif
#if INT64
	   printf(" ***  test 2-2  error ***\n%llx,%llx\n",stp->i,stp->j);
#else
     printf(" ***  test 2-2  error ***\n%x,%lx\n",stp->i,stp->j);
#endif
       return;
     }

 struct extag55 {
     char   c[4];
     long   l;
 } stex5 = { 127, 127 ,-1, -1, -1 };
 struct extag55;

 void test2 (void)                 
 {
 test21();
 test22(&stex5);
 test23();
 }

 void test21 (void)              
 {
 struct extag55 {
#if INT64
    __int32   i;
#else
    int   i;
#endif
#if LONG64   || __x86_64__ || __aarch64__
    unsigned long u;
#else
    unsigned  u;
#endif
  } *stp = (struct extag55 *)&stex5;

  if (stex5.c[0] != 127 || stex5.c[3] != -1 || stex5.l != -1 ||
#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
      stp->i != 0xffff7f7f ||
#else
      stp->i != 0x7f7fffff ||
#endif
#if INT64 || LONG64   || __x86_64__ || __aarch64__
      stp->u != 18446744073709551615)
#else
    stp->u != 4294967295)
#endif
     printf(" ***  test 2-1  error ***\n%x,%lu\n",stp->i,stp->u);
 }

 int fnc(struct extag55 { int i; } st);  

 void
test23 (void)                                 
 {
 struct tag {
     int    i;
     struct extag55 { int i,j; } stex;
 } st = { -1, -2, -3 };

  if (st.i != -1 || st.stex.i != -2 || st.stex.j != -3)
    printf(" ***  test 2-3  error ***\n");
  return;
}

 struct extag5 {
     char  c;
     short s;
 } ;

 struct extag6 {
     char   c;
     long   l;
 };
 void
test3 (void)                      
 {
 struct extag6;
 struct extag6 {
     double  d;
     float   f;
 } st = { 1.2, 0.25 };

 if (st.d != 1.2 || st.f != .25)
     printf(" ***  test 3-1 error ***\n");

 if (test3x())
     printf(" ***  test 3-2 error ***\n");
 }

 int
test3x (void)
 {
 struct extag6 st = { 100, 200 };
 if (st.c != 100 || st.l != 200)
     return 1;
 else
     return 0;
 }

 void
test4 (void)                      
 {
 struct atag11 {
     signed char  sc;
     unsigned int ui;
 } st11 = { -1, 0xffffffff };
 struct atag11;
 struct atag1 {
     char  c;
     int   i;
 } st12 = { 0xff, 0x7fffffff }, *stp;

 if (st11.sc != -1 || st11.ui != 4294967295 ||
     st12.c != -1  || st12.i != 2147483647)
     printf(" ***  test 4-1 error ***\n");

 stp = (struct atag1 *)&st11;
#if INT64
  if (stp->c != -1  || stp->i != 4294967295)
#else
    if (stp->c != -1  || stp->i != -1)
#endif
     printf(" ***  test 4-2 error ***\n%hhx,%x\n",stp->c,stp->i);

 stp = &st12;
 if (stp->c != -1  || stp->i != 2147483647)
     printf(" ***  test 4-3 error ***\n");
 }

 void
test5 (void)                      
 {
 struct atag11 {
     signed char  sc;
     unsigned int ui;
 } st11 = { -1, 0xffffffff };
 struct atag11;
 struct atag2 {
     int i;
     struct atag1 {
         char c;
         int i;
     } st12;
 } st21 = { -1, 127, 0 };
 struct atag1 *st12p = &(st21.st12);

 if (st11.sc != -1 || st11.ui != 4294967295)
     printf(" ***  test 5-1 error ***\n");

 if (st12p->c != 0x7f || st12p->i != 0)
     printf(" ***  test 5-2 error ***\n");

 st12p = (struct atag1 *)&st11;
#if INT64
  if (st12p->c != -1  || st12p->i != 4294967295)
#else
    if (st12p->c != -1  || st12p->i != -1)
#endif
     printf(" ***  test 5-3 error ***\n");
 }

 void
test6 (void)                      
 {
 struct atag1 {
     signed char  sc;
     unsigned int ui;
 } st11 = { -1, 0xffffffff },*stp=&st11;
 int  *ip;
   {
     struct atag1;
     struct atag1 {
         char c;
         int i;
     } st12 = { 0xff, 0x7fffffff }, *stp;

     stp = (struct atag1 *)&st11;
#if INT64
    if (stp->c != -1  || stp->i != 4294967295)
#else
      if (stp->c != -1  || stp->i != -1)
#endif
         printf(" ***  test 6-1 error ***\n");
   }
 ip = (int *)stp;
 if (((struct atag1 *)ip)->sc != -1 ||
     ((struct atag1 *)ip)->ui != 4294967295)
         printf(" ***  test 6-2 error ***\n");
 }

 void
test7 (void)                      
 {
 struct atag1 {
     signed char  sc;
     unsigned int ui;
 } st11 = { -1, 0xffffffff },*stp=&st11;
 int  *ip;
   {
     struct atag1 {
         char c;
         int i;
     } st12 = { 0xff, 0x7fffffff };
     struct atag1;

     if (stp->sc != -1 || stp->ui != 4294967295)
         printf(" ***  test 7-1 error ***\n");
   }
 ip = (int *)stp;
 if (((struct atag1 *)ip)->sc != -1 ||
     ((struct atag1 *)ip)->ui != 4294967295)
         printf(" ***  test 7-2 error ***\n");
 }

 struct atag1 {
     unsigned short us;
     unsigned int   ui;
 } stex8 = { 65535, 4294967295 };

 int test8a(struct atag1 st);
 int test8b(struct atag1 st);

 void
test8 (void)                        
 {
 struct atag1 {
     short   s;
     long    l;
 } st11 = { -1, -1 };
 struct atag1;
 int fnc2(struct atag1 { int i,j; } st);

 if (st11.s != -1 || st11.l != -1)
     printf(" ***  test 8-1 error ***\n");

 if (test8a(stex8))
     printf(" ***  test 8-2 error ***\n");

 if (test8b(stex8))
     printf(" ***  test 8-3 error ***\n");
 }

 int test8a(struct atag1 st)
 {
 if (st.us != 65535 || st.ui != 4294967295)
     return 1;
 else
     return 0;
 }

 int test8b(struct atag1 st)
 {
 struct atag1;
 struct atag1 {
     char  c[2];
     unsigned short s[2];
 };

 if (st.us != 65535 || st.ui != 4294967295)
     return 1;
 else
     return 0;
 }

 struct extag7 {
     char   c[4];
     int    i[4];
 } ;
 struct extag7;
 struct extag7  *stex7p;

 void test9 (void)
 {
 int zero=0;
#if INT64 || LONG64   || __x86_64__ || __aarch64__
  if (sizeof(stex7p)+zero != 8)
#else
  if (sizeof(stex7p)+zero != 4)
#endif
    printf(" ***  test 9-1 error ***\n");
  return;
}

 struct tagzz1 {
     int i;
     char c;
 };
 struct tagzz1;
 struct tagzz2 {
     int j;
     char d;
 };
 struct tagzz2;
 struct tagzz3 {
     int k;
     char e;
 };
 struct tagzz3;
 struct tagzz3;
 struct tagzz3;
 struct tagzz3;
 struct tagzz3;
 struct tagzz {
     int l;
     char f;
 };

 void test10 (void)
 {
 struct tagzz stz = { -1, 100 };

  if (stz.l != -1 || stz.f != 100)
    printf(" ***  test 10-1 error ***\n");
  return;
}
