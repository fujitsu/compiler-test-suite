#include<stdio.h>
int func2();
int func1();
 

int main()
{
  printf("03 START\n");
  func1();
  func2();
  printf("03 END  \n");
}

int func1(){
  static char           ch = 1;
  static signed char    sc = 1;
  static unsigned char  uc = 1;
  static int           in = 1, a, b;
  static signed int    si = 1;
  static unsigned int  ui = 1;
  static short int           sh = 1;
  static signed short int    ss = 1;
  static unsigned short int  us = 1;
  static long int           lo = 1;
  static signed long int    sl = 1;
  static unsigned long int  ul = 1;
  static float        fl = 1.0f;
  static double       db = 1.0 ;
  static long double  ld = 1.0l;

  a = sizeof(ch+in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-1 OK\n");
  else
    printf("03 FUNC1-1 NG\n");

  a = sizeof(sc+si);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-2 OK\n");
  else
    printf("03 FUNC1-2 NG\n");

  a = sizeof(uc+sh);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-3 OK\n");
  else
    printf("03 FUNC1-3 NG\n");

  a = sizeof(in*fl);
  if (a == 4)
    printf("03 FUNC1-4 OK\n");
  else
    printf("03 FUNC1-4 NG\nif -Xt OK -- a=8\n");

  a = sizeof(si/db);
  if (a == 8)
    printf("03 FUNC1-5 OK\n");
  else
    printf("03 FUNC1-5 NG\n");

  a = sizeof(ui%ul);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-6 OK\n");
  else
    printf("03 FUNC1-6 NG\n");

  a = sizeof(sh>in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-7 OK\n");
  else
    printf("03 FUNC1-7 NG\n");

  a = sizeof(ss<si);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-8 OK\n");
  else
    printf("03 FUNC1-8 NG\n");

  a = sizeof(us-sl);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-9 OK\n");
  else
    printf("03 FUNC1-9 NG\n");

  a = sizeof(lo<<ch);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-10 OK\n");
  else
    printf("03 FUNC1-10 NG\n");

  a = sizeof(sl>>sh);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-11 OK\n");
  else
    printf("03 FUNC1-11 NG\n");

  a = sizeof(ul&ss);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-12 OK\n");
  else
    printf("03 FUNC1-12 NG\n");

  a = sizeof(fl&&in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-13 OK\n");
  else
    printf("03 FUNC1-13 NG\n");

  a = sizeof(db||sh);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC1-14 OK\n");
  else
    printf("03 FUNC1-14 NG\n");

  a = sizeof(ld*uc);
#if defined(gmicro) || defined(i386)
  if (a == 12)
#elif __NO_LONGDOUBLE
  if (a == 8)
#else
  if (a == 16)
#endif
    printf("03 FUNC1-15 OK\n");
  else
    printf("03 FUNC1-15 NG\n");

}

int func2(){
  static char           ch = 1;
  static signed char    sc = 1;
  static unsigned char  uc = 1;
  static int           in = 1, a, b;
  static signed int    si = 1;
  static unsigned int  ui = 1;
  static short int           sh = 1;
  static signed short int    ss = 1;
  static unsigned short int  us = 1;
  static long int           lo = 1;
  static signed long int    sl = 1;
  static unsigned long int  ul = 1;
  static float        fl = 1.0f;
  static double       db = 1.0 ;
  static long double  ld = 1.0l;

  a = sizeof(ch+4);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-1 OK\n");
  else
    printf("03 FUNC2-1 NG\n");

  a = sizeof(sc-1);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-2 OK\n");
  else
    printf("03 FUNC2-2 NG\n");

  a = sizeof(uc*2);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-3 OK\n");
  else
    printf("03 FUNC2-3 NG\n");

  a = sizeof(in*1.0f);
  if (a == 4)
    printf("03 FUNC2-4 OK\n");
  else
    printf("03 FUNC2-4 NG\nif -Xt OK a--8\n");

  a = sizeof(si/1.0);
  if (a == 8)
    printf("03 FUNC2-5 OK\n");
  else
    printf("03 FUNC2-5 NG\n");

  a = sizeof(21%ul);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-6 OK\n");
  else
    printf("03 FUNC2-6 NG\n");

  a = sizeof(1.0>in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-7 OK\n");
  else
    printf("03 FUNC2-7 NG\n");

  a = sizeof(ss<2.5);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-8 OK\n");
  else
    printf("03 FUNC2-8 NG\n");

  a = sizeof(us-10);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-9 OK\n");
  else
    printf("03 FUNC2-9 NG\n");

  a = sizeof(lo<<1);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-10 OK\n");
  else
    printf("03 FUNC2-10 NG\n");

  a = sizeof(sl>>2);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-11 OK\n");
  else
    printf("03 FUNC2-11 NG\n");

  a = sizeof(15&ss);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-12 OK\n");
  else
    printf("03 FUNC2-12 NG\n");

  a = sizeof(2.0f&&in);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-13 OK\n");
  else
    printf("03 FUNC2-13 NG\n");

  a = sizeof(db||1.0l);
#if INT64
  if (a == 8)
#else
  if (a == 4)
#endif
    printf("03 FUNC2-14 OK\n");
  else
    printf("03 FUNC2-14 NG\n");

  a = sizeof(ld*1.0f);
#if defined(gmicro) || defined(i386)
  if (a == 12)
#elif __NO_LONGDOUBLE
  if (a == 8)
#else
  if (a == 16)
#endif
    printf("03 FUNC2-15 OK\n");
  else
    printf("03 FUNC2-15 NG\n");

}
