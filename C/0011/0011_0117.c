#include  <stdio.h>

struct tag1
 {
   int a;
   long double b[260];
 };
 struct tag1 st1;

struct tag2
 {
   int x;
   long double y[520];
 };
 struct tag2 st2;

int main()
{
 double temp;
  printf("********** START **********\n");

  st1.b[255]= 1.0;
  st1.b[256]= 2.0;
  st1.b[257]= 3.0;
  temp=st1.b[255];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("7774000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  temp=st1.b[256];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("10000000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  temp=st1.b[257];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("10002000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  if(st1.b[255] == 1.0)
     printf("********** 01 OK **********\n");
  else
     printf("********** 01 NG **********\n");
  if(st1.b[256] == 2.0)
     printf("********** 02 OK **********\n");
  else
     printf("********** 02 NG **********\n");
  if(st1.b[257] == 3.0)
     printf("********** 03 OK **********\n");
  else
     printf("********** 03 NG **********\n");

  st2.y[511]= 1;
  st2.y[512]= 2;
  st2.y[513]= 3;
  temp=st2.y[511];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("7774000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  temp=st2.y[512];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("10000000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  temp=st2.y[513];
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
  printf("10002000000\n");
#elif INT64 | __sparcv9
  printf("%s%o\n","",*(__int32 *)&temp);
#else
  printf("%s%o\n","",*(long *)&temp);
#endif
  if(st2.y[511] == 1  )
     printf("********** 04 OK **********\n");
  else
     printf("********** 04 NG **********\n");
  if(st2.y[512] == 2  )
     printf("********** 05 OK **********\n");
  else
     printf("********** 05 NG **********\n");
  if(st2.y[513] == 3  )
     printf("********** 06 OK **********\n");
  else
     printf("********** 06 NG **********\n");
  printf("**********   END   **********\n");

}
