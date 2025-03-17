#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  printf(" END  \n");
exit (0);
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
#if (A32 || I64 || LLP )
  if (a == 16)
#elif ILP
  if (a == 32)
#else (LP)
  if (a == 24)
#endif
    printf(" FUNC1-1 OK\n");
  else
    printf(" FUNC1-1 NG\n");
 
  a = sizeof(st.c);
  b = sizeof(st.i);
  c = sizeof(st.s);
  d = sizeof(st.l);
#if (A32 || I64 || LLP )
  if (a == 1 && b == 4 && c == 2 && d == 4)
#elif ILP
  if (a == 1 && b == 8 && c == 2 && d == 8)
#else (LP)
  if (a == 1 && b == 4 && c == 2 && d == 8)
#endif
    printf(" FUNC1-2 OK\n");
  else
    printf(" FUNC1-2 NG\n");
 
  a = sizeof(*stp);
  b = sizeof(stp);
#if (A32 || I64 )
  if (a == 16 && b == 4)
#elif LLP
  if (a == 16 && b == 8)
#elif ILP
  if (a == 32 && b == 8)
#else (LP)
  if (a == 24 && b == 8)
#endif
    printf(" FUNC1-3 OK\n");
  else
    printf(" FUNC1-3 NG\n");
 
  a = sizeof(stp->c);
  b = sizeof(stp->i);
  c = sizeof(stp->s);
  d = sizeof(stp->l);
#if (A32 || I64 || LLP )
  if (a == 1 && b == 4 && c == 2 && d == 4)
#elif ILP
  if (a == 1 && b == 8 && c == 2 && d == 8)
#else (LP)
  if (a == 1 && b == 4 && c == 2 && d == 8)
#endif
    printf(" FUNC1-4 OK\n");
  else
    printf(" FUNC1-4 NG\n");
 
  a = sizeof(sta1);
#if (A32 || I64 || LLP )
  if (a == 160)
#elif ILP
  if (a == 320)
#else (LP)
  if (a == 240)
#endif
    printf(" FUNC1-5 OK\n");
  else
    printf(" FUNC1-5 NG\n");
 
  a = sizeof(sta1[5]);
#if (A32 || I64 || LLP )
  if (a == 16)
#elif ILP
  if (a == 32)
#else (LP)
  if (a == 24)
#endif
    printf(" FUNC1-6 OK\n");
  else
    printf(" FUNC1-6 NG\n");
 
  a = sizeof(sta1[6].c);
  b = sizeof(sta1[7].i);
  c = sizeof(sta1[8].s);
  d = sizeof(sta1[9].l);
#if (A32 || I64 || LLP )
  if (a == 1 && b == 4 && c == 2 && d == 4)
#elif ILP
  if (a == 1 && b == 8 && c == 2 && d == 8)
#else (LP)
  if (a == 1 && b == 4 && c == 2 && d == 8)
#endif
    printf(" FUNC1-7 OK\n");
  else
    printf(" FUNC1-7 NG\n");
 
  a = sizeof(sta2);
#if (A32 || I64 || LLP )
  if (a == 320)
#elif ILP
  if (a == 640)
#else (LP)
  if (a == 480)
#endif
    printf(" FUNC1-8 OK\n");
  else
    printf(" FUNC1-8 NG\n");
 
  a = sizeof(sta2[5]);
#if (A32 || I64 || LLP )
  if (a == 32)
#elif ILP
  if (a == 64)
#else (LP)
  if (a == 48)
#endif
    printf(" FUNC1-9 OK\n");
  else
    printf(" FUNC1-9 NG\n");
 
  a = sizeof(sta2[0][0]);
#if (A32 || I64 || LLP )
  if (a == 16)
#elif ILP
  if (a == 32)
#else (LP)
  if (a == 24)
#endif
    printf(" FUNC1-10 OK\n");
  else
    printf(" FUNC1-10 NG\n");
 
  a = sizeof(sta2[6][0].c);
  b = sizeof(sta2[7][1].i);
  c = sizeof(sta2[8][0].s);
  d = sizeof(sta2[9][1].l);
#if (A32 || I64 || LLP )
  if (a == 1 && b == 4 && c == 2 && d == 4)
#elif ILP
  if (a == 1 && b == 8 && c == 2 && d == 8)
#else (LP)
  if (a == 1 && b == 4 && c == 2 && d == 8)
#endif
    printf(" FUNC1-11 OK\n");
  else
    printf(" FUNC1-11 NG\n");
 
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
  if (a == 16)
    printf(" FUNC2-1 OK\n");
  else
    printf(" FUNC2-1 NG\n");
 
  a = sizeof(st.c);
  b = sizeof(st.i);
  c = sizeof(st.s);
  d = sizeof(st.l);
#if ILP
  if (a == 1 && b == 8 && c == 2 && d ==16)
#else (A32 || I64 || LLP || LP)
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf(" FUNC2-2 OK\n");
  else
    printf(" FUNC2-2 NG\n");
 
  a = sizeof(*stp);
  b = sizeof(stp);
#if (A32 || I64 )
  if (a == 16 && b == 4)
#else (LP || ILP || LLP)
  if (a == 16 && b == 8)
#endif
    printf(" FUNC2-3 OK\n");
  else
    printf(" FUNC2-3 NG\n");
 
  a = sizeof(stp->c);
  b = sizeof(stp->i);
  c = sizeof(stp->s);
  d = sizeof(stp->l);
#if ILP
  if (a == 1 && b == 8 && c == 2 && d ==16)
#else (A32 || I64 || LLP || LP)
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf(" FUNC2-4 OK\n");
  else
    printf(" FUNC2-4 NG\n");
 
  a = sizeof(sta1);
  if (a == 160)
    printf(" FUNC2-5 OK\n");
  else
    printf(" FUNC2-5 NG\n");
 
  a = sizeof(sta1[5]);
  if (a == 16)
    printf(" FUNC2-6 OK\n");
  else
    printf(" FUNC2-6 NG\n");
 
  a = sizeof(sta1[6].c);
  b = sizeof(sta1[7].i);
  c = sizeof(sta1[8].s);
  d = sizeof(sta1[9].l);
#if ILP
  if (a == 1 && b == 8 && c == 2 && d ==16)
#else (A32 || I64 || LLP || LP)
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf(" FUNC2-7 OK\n");
  else
    printf(" FUNC2-7 NG\n");
 
  a = sizeof(sta2);
  if (a == 320)
    printf(" FUNC2-8 OK\n");
  else
    printf(" FUNC2-8 NG\n");
 
  a = sizeof(sta2[5]);
  if (a == 32)
    printf(" FUNC2-9 OK\n");
  else
    printf(" FUNC2-9 NG\n");
 
  a = sizeof(sta2[0][0]);
  if (a == 16)
    printf(" FUNC2-10 OK\n");
  else
    printf(" FUNC2-10 NG\n");
 
  a = sizeof(sta2[6][0].c);
  b = sizeof(sta2[7][1].i);
  c = sizeof(sta2[8][0].s);
  d = sizeof(sta2[9][1].l);
#if ILP
  if (a == 1 && b == 8 && c == 2 && d ==16)
#else (A32 || I64 || LLP || LP)
  if (a == 1 && b == 4 && c == 2 && d ==16)
#endif
    printf(" FUNC2-11 OK\n");
  else
    printf(" FUNC2-11 NG\n");
 
}
