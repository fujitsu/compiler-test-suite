#include<stdio.h>
int func3();
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  func3();
  printf("01 END  \n");
}

int func1(){
  static char           ch ;
  static signed char    sc ;
  static unsigned char  uc ;
  static int           in, a, b;
  static signed int    si ;
  static unsigned int  ui ;
  static short int           sh ;
  static signed short int    ss ;
  static unsigned short int  us ;
  static long int           lo ;
  static signed long int    sl ;
  static unsigned long int  ul ;
  static float        fl ;
  static double       db ;
  static long double  ld ;

  a = sizeof(ch);
  b = sizeof(char);
  if (a == 1 && b == 1)
    printf("01 FUNC1-1 OK\n");
  else
    printf("01 FUNC1-1 NG\n");

  a = sizeof(sc);
  b = sizeof(signed char);
  if (a == 1 && b == 1)
    printf("01 FUNC1-2 OK\n");
  else
    printf("01 FUNC1-2 NG\n");

  a = sizeof(uc);
  b = sizeof(unsigned char);
  if (a == 1 && b == 1)
    printf("01 FUNC1-3 OK\n");
  else
    printf("01 FUNC1-3 NG\n");

  a = sizeof(in);
  b = sizeof(int);
#if INT64
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-4 OK\n");
  else
    printf("01 FUNC1-4 NG\n");

  a = sizeof(si);
  b = sizeof(signed int);
#if INT64
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-5 OK\n");
  else
    printf("01 FUNC1-5 NG\n");

  a = sizeof(ui);
  b = sizeof(unsigned int);
#if INT64
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-6 OK\n");
  else
    printf("01 FUNC1-6 NG\n");

  a = sizeof(sh);
  b = sizeof(short int);
  if (a == 2 && b == 2)
    printf("01 FUNC1-7 OK\n");
  else
    printf("01 FUNC1-7 NG\n");

  a = sizeof(ss);
  b = sizeof(signed short int);
  if (a == 2 && b == 2)
    printf("01 FUNC1-8 OK\n");
  else
    printf("01 FUNC1-8 NG\n");

  a = sizeof(us);
  b = sizeof(unsigned short int);
  if (a == 2 && b == 2)
    printf("01 FUNC1-9 OK\n");
  else
    printf("01 FUNC1-9 NG\n");

  a = sizeof(lo);
  b = sizeof(long int);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-10 OK\n");
  else
    printf("01 FUNC1-10 NG\n");

  a = sizeof(sl);
  b = sizeof(signed long int);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-11 OK\n");
  else
    printf("01 FUNC1-11 NG\n");

  a = sizeof(ul);
  b = sizeof(unsigned long int);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC1-12 OK\n");
  else
    printf("01 FUNC1-12 NG\n");

  a = sizeof(fl);
  b = sizeof(float);
  if (a == 4 && b == 4)
    printf("01 FUNC1-13 OK\n");
  else
    printf("01 FUNC1-13 NG\n");

  a = sizeof(db);
  b = sizeof(double);
  if (a == 8 && b == 8)
    printf("01 FUNC1-14 OK\n");
  else
    printf("01 FUNC1-14 NG\n");

  a = sizeof(ld);
  b = sizeof(long double);
#if defined(gmicro) || defined(__i386)
  if (a == 12 && b == 12)
#elif defined(__NO_LONGDOUBLE)
  if (a == 8 && b == 8)
#else
  if (a == 16 && b == 16)
#endif
    printf("01 FUNC1-15 OK\n");
  else
    printf("01 FUNC1-15 NG\n");

}

int func2(){
  static char           *ch ;
  static signed char    *sc ;
  static unsigned char  *uc ;
  static int           *in, a, b;
  static signed int    *si ;
  static unsigned int  *ui ;
  static short int           *sh ;
  static signed short int    *ss ;
  static unsigned short int  *us ;
  static long int           *lo ;
  static signed long int    *sl ;
  static unsigned long int  *ul ;
  static float        *fl ;
  static double       *db ;
  static long double  *ld ;
  void  *vo;

  a = sizeof(*ch);
  b = sizeof(ch);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 8)
#else
  if (a == 1 && b == 4)
#endif
    printf("01 FUNC2-1 OK\n");
  else
    printf("01 FUNC2-1 NG\n");

  a = sizeof(*sc);
  b = sizeof(sc);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 8)
#else
  if (a == 1 && b == 4)
#endif
    printf("01 FUNC2-2 OK\n");
  else
    printf("01 FUNC2-2 NG\n");

  a = sizeof(*uc);
  b = sizeof(uc);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 8)
#else
  if (a == 1 && b == 4)
#endif
    printf("01 FUNC2-3 OK\n");
  else
    printf("01 FUNC2-3 NG\n");

  a = sizeof(*in);
  b = sizeof(in);
#if INT64
  if (a == 8 && b == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 4 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-4 OK\n");
  else
    printf("01 FUNC2-4 NG\n");

  a = sizeof(*si);
  b = sizeof(si);
#if INT64
  if (a == 8 && b == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 4 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-5 OK\n");
  else
    printf("01 FUNC2-5 NG\n");

  a = sizeof(*ui);
  b = sizeof(ui);
#if INT64
  if (a == 8 && b == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 4 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-6 OK\n");
  else
    printf("01 FUNC2-6 NG\n");

  a = sizeof(*sh);
  b = sizeof(sh);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 2 && b == 8)
#else
  if (a == 2 && b == 4)
#endif
    printf("01 FUNC2-7 OK\n");
  else
    printf("01 FUNC2-7 NG\n");

  a = sizeof(*ss);
  b = sizeof(ss);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 2 && b == 8)
#else
  if (a == 2 && b == 4)
#endif
    printf("01 FUNC2-8 OK\n");
  else
    printf("01 FUNC2-8 NG\n");

  a = sizeof(*us);
  b = sizeof(us);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 2 && b == 8)
#else
  if (a == 2 && b == 4)
#endif
    printf("01 FUNC2-9 OK\n");
  else
    printf("01 FUNC2-9 NG\n");

  a = sizeof(*lo);
  b = sizeof(lo);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-10 OK\n");
  else
    printf("01 FUNC2-10 NG\n");

  a = sizeof(*sl);
  b = sizeof(sl);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-11 OK\n");
  else
    printf("01 FUNC2-11 NG\n");

  a = sizeof(*ul);
  b = sizeof(ul);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-12 OK\n");
  else
    printf("01 FUNC2-12 NG\n");

  a = sizeof(*fl);
  b = sizeof(fl);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 4 && b == 8)
#else
  if (a == 4 && b == 4)
#endif
    printf("01 FUNC2-13 OK\n");
  else
    printf("01 FUNC2-13 NG\n");

  a = sizeof(*db);
  b = sizeof(db);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 8 && b == 8)
#else
  if (a == 8 && b == 4)
#endif
    printf("01 FUNC2-14 OK\n");
  else
    printf("01 FUNC2-14 NG\n");

  a = sizeof(*ld);
  b = sizeof(ld);
#if defined(INT64) || defined(LONG64) || defined(__x86_64__) || defined(__aarch64__)
  if (a == 16 && b == 8)
#elif defined(__NO_LONGDOUBLE)
  if (a == 8 && b == 4)
#elif defined(__i386)
  if (a == 12 && b == 4)
#else
  if (a == 16 && b == 4)
#endif
    printf("01 FUNC2-15 OK\n");
  else
    printf("01 FUNC2-15 NG\n");

  b = sizeof(vo);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (b == 8)
#else
  if (b == 4)
#endif
    printf("01 FUNC2-16 OK\n");
  else
    printf("01 FUNC2-16 NG\n");

}

int func3(){
  static char         ch[10] ;
  static int          in[10][5], a, b, c, d;
  static short int    sh[5][5][5] ;
  static long int     lo[2][2][2][2] ;

  a = sizeof(ch);
  b = sizeof(char);
  if (a / b == 10)
    printf("01 FUNC3-1 OK\n");
  else
    printf("01 FUNC3-1 NG\n");

  a = sizeof(ch[0]);
  if (a == 1)
    printf("01 FUNC3-2 OK\n");
  else
    printf("01 FUNC3-2 NG\n");

  a = sizeof(in);
  b = sizeof(int);
  if (a / b == 50)
    printf("01 FUNC3-3 OK\n");
  else
    printf("01 FUNC3-3 NG\n");

  a = sizeof(in[0]);
  b = sizeof(in[0][0]);
#if INT64
  if (a == 40 && b == 8)
#else
  if (a == 20 && b == 4)
#endif
    printf("01 FUNC3-4 OK\n");
  else
    printf("01 FUNC3-4 NG\n");

  a = sizeof(sh);
  b = sizeof(short int);
  if (a / b == 125)
    printf("01 FUNC3-5 OK\n");
  else
    printf("01 FUNC3-5 NG\n");

  a = sizeof(sh[0]);
  b = sizeof(sh[0][0]);
  c = sizeof(sh[0][0][0]);
  if (a == 50 && b == 10 && c == 2)
    printf("01 FUNC3-6 OK\n");
  else
    printf("01 FUNC3-6 NG\n");

  a = sizeof(lo);
  b = sizeof(long int);
  if (a / b == 16)
    printf("01 FUNC3-7 OK\n");
  else
    printf("01 FUNC3-7 NG\n");

  a = sizeof(lo[0]);
  b = sizeof(lo[0][0]);
  c = sizeof(lo[0][0][0]);
  d = sizeof(lo[0][0][0][0]);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 64 && b == 32 && c == 16 && d == 8)
#else
  if (a == 32 && b == 16 && c == 8 && d == 4)
#endif
    printf("01 FUNC3-8 OK\n");
  else
    printf("01 FUNC3-8 NG\n");
}
