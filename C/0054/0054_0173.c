#include<stdio.h>
int func2();
int func1();
 

int main()
{
  printf("02 START\n");
  func1();
  func2();
  printf("02 END  \n");
}

int func1(){
  static int a, b, c, d;
  static struct tag {
         char         c ;
         int          i ;
         short int    s ;
         long int     l ;
  } st, *stp, sta1[10], sta2[10][2];

  a = sizeof(st);
#if INT64
  if (a == 32)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 24)
#else
  if (a == 16)
#endif
    printf("02 FUNC1-1 OK\n");
  else
    printf("02 FUNC1-1 NG\n");

  a = sizeof(st.c);
  b = sizeof(st.i);
  c = sizeof(st.s);
  d = sizeof(st.l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 4 && c == 2 && d == 8)
#else
  if (a == 1 && b == 4 && c == 2 && d == 4)
#endif
    printf("02 FUNC1-2 OK\n");
  else
    printf("02 FUNC1-2 NG\n");

  a = sizeof(*stp);
  b = sizeof(stp);
#if INT64
  if (a == 32 && b == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 24 && b == 8)
#else
  if (a == 16 && b == 4)
#endif
    printf("02 FUNC1-3 OK\n");
  else
    printf("02 FUNC1-3 NG\n");

  a = sizeof(stp->c);
  b = sizeof(stp->i);
  c = sizeof(stp->s);
  d = sizeof(stp->l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 4 && c == 2 && d == 8)
#else
  if (a == 1 && b == 4 && c == 2 && d == 4)
#endif
    printf("02 FUNC1-4 OK\n");
  else
    printf("02 FUNC1-4 NG\n");

  a = sizeof(sta1);
#if INT64
  if (a == 320)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 240)
#else
  if (a == 160)
#endif
    printf("02 FUNC1-5 OK\n");
  else
    printf("02 FUNC1-5 NG  %d\n",a);

  a = sizeof(sta1[5]);
#if INT64
  if (a == 32)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 24)
#else
  if (a == 16)
#endif
    printf("02 FUNC1-6 OK\n");
  else
    printf("02 FUNC1-6 NG\n");

  a = sizeof(sta1[6].c);
  b = sizeof(sta1[7].i);
  c = sizeof(sta1[8].s);
  d = sizeof(sta1[9].l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 4 && c == 2 && d == 8)
#else
  if (a == 1 && b == 4 && c == 2 && d == 4)
#endif
    printf("02 FUNC1-7 OK\n");
  else
    printf("02 FUNC1-7 NG\n");

  a = sizeof(sta2);
#if INT64
  if (a == 640)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 480)
#else
  if (a == 320)
#endif
    printf("02 FUNC1-8 OK\n");
  else
    printf("02 FUNC1-8 NG\n");

  a = sizeof(sta2[5]);
#if INT64
  if (a == 64)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 48)
#else
  if (a == 32)
#endif
    printf("02 FUNC1-9 OK\n");
  else
    printf("02 FUNC1-9 NG\n");

  a = sizeof(sta2[0][0]);
#if INT64
  if (a == 32)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 24)
#else
  if (a == 16)
#endif
    printf("02 FUNC1-10 OK\n");
  else
    printf("02 FUNC1-10 NG\n");

  a = sizeof(sta2[6][0].c);
  b = sizeof(sta2[7][1].i);
  c = sizeof(sta2[8][0].s);
  d = sizeof(sta2[9][1].l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d == 8)
#elif LONG64 || __x86_64__ || __aarch64__
  if (a == 1 && b == 4 && c == 2 && d == 8)
#else
  if (a == 1 && b == 4 && c == 2 && d == 4)
#endif
    printf("02 FUNC1-11 OK\n");
  else
    printf("02 FUNC1-11 NG\n");

}

int func2(){
  static int a, b, c, d;
  static union tag {
         char         c ;
         int          i ;
         short int    s ;
         long double  l ;
  } st, *stp, sta1[10], sta2[10][2];

  a = sizeof(st);
#if defined(gmicro) || defined(i386)
  if (a == 12)
#elif __NO_LONGDOUBLE
  if (a == 8)
#else
  if (a == 16)
#endif
    printf("02 FUNC2-1 OK\n");
  else
    printf("02 FUNC2-1 NG  a=%d\n",a);

  a = sizeof(st.c);
  b = sizeof(st.i);
  c = sizeof(st.s);
  d = sizeof(st.l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d ==16)
#elif i386
  if (a == 1 && b == 4 && c == 2 && d ==12)
#elif __NO_LONGDOUBLE
  if (a == 1 && b == 4 && c == 2 && d ==8)
#else
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf("02 FUNC2-2 OK\n");
  else
    printf("02 FUNC2-2 NG\n");

  a = sizeof(*stp);
  b = sizeof(stp);
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if (a == 16 && b == 8)
#elif i386
  if (a == 12 && b == 4)
#elif __NO_LONGDOUBLE
  if (a == 8 && b == 4)
#else
  if (a == 16 && b == 4)
#endif
    printf("02 FUNC2-3 OK\n");
  else
    printf("02 FUNC2-3 NG\n");

  a = sizeof(stp->c);
  b = sizeof(stp->i);
  c = sizeof(stp->s);
  d = sizeof(stp->l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d ==16)
#elif i386
  if (a == 1 && b == 4 && c == 2 && d ==12)
#elif __NO_LONGDOUBLE
  if (a == 1 && b == 4 && c == 2 && d ==8)
#else
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf("02 FUNC2-4 OK\n");
  else
    printf("02 FUNC2-4 NG\n");

  a = sizeof(sta1);
#if defined(gmicro) || defined(i386)
  if (a == 120)
#elif __NO_LONGDOUBLE
  if (a == 80)
#else
  if (a == 160)
#endif
    printf("02 FUNC2-5 OK\n");
  else
    printf("02 FUNC2-5 NG\n");

  a = sizeof(sta1[5]);
#if defined(gmicro) || defined(i386)
  if (a == 12)
#elif __NO_LONGDOUBLE
  if (a == 8)
#else
  if (a == 16)
#endif
    printf("02 FUNC2-6 OK\n");
  else
    printf("02 FUNC2-6 NG\n");

  a = sizeof(sta1[6].c);
  b = sizeof(sta1[7].i);
  c = sizeof(sta1[8].s);
  d = sizeof(sta1[9].l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d ==16)
#elif i386
  if (a == 1 && b == 4 && c == 2 && d ==12)
#elif __NO_LONGDOUBLE
  if (a == 1 && b == 4 && c == 2 && d ==8)
#else
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf("02 FUNC2-7 OK\n");
  else
    printf("02 FUNC2-7 NG\n");

  a = sizeof(sta2);
#if defined(gmicro) || defined(i386)
  if (a == 240)
#elif __NO_LONGDOUBLE
  if (a == 160)
#else
  if (a == 320)
#endif
    printf("02 FUNC2-8 OK\n");
  else
    printf("02 FUNC2-8 NG\n");

  a = sizeof(sta2[5]);
#if defined(gmicro) || defined(i386)
  if (a == 24)
#elif __NO_LONGDOUBLE
  if (a == 16)
#else
  if (a == 32)
#endif
    printf("02 FUNC2-9 OK\n");
  else
    printf("02 FUNC2-9 NG\n");

  a = sizeof(sta2[0][0]);
#if defined(gmicro) || defined(i386)
  if (a == 12)
#elif __NO_LONGDOUBLE
  if (a == 8)
#else
  if (a == 16)
#endif
    printf("02 FUNC2-10 OK\n");
  else
    printf("02 FUNC2-10 NG\n");

  a = sizeof(sta2[6][0].c);
  b = sizeof(sta2[7][1].i);
  c = sizeof(sta2[8][0].s);
  d = sizeof(sta2[9][1].l);
#if INT64
  if (a == 1 && b == 8 && c == 2 && d ==16)
#elif i386
  if (a == 1 && b == 4 && c == 2 && d ==12)
#elif __NO_LONGDOUBLE
  if (a == 1 && b == 4 && c == 2 && d ==8)
#else
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf("02 FUNC2-11 OK\n");
  else
    printf("02 FUNC2-11 NG\n");

}
