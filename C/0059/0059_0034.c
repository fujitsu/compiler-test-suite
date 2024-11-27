
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

union conv1 {
  char               a;
  short int          b;
  unsigned short     c;
  unsigned           d;
  long               e;
  unsigned long      f;
  float              g;
  long double        h;
  bool               i;
  long long          j;
  unsigned long long k;
  signed char        l;
  _Bool              m;
  double _Complex    n;
  double             o;
};
union conv2 {
  char               a;
  float              g;
  bool               i;
  long long          j;
  unsigned long long k;
  signed char        l;
  _Bool              m;
  double             o;
};
struct sx { char f; };
union conv3 {
  char               a;
  short int          b;
  unsigned short     c;
  unsigned           d;
  float              g;
  long long          j;
  struct sx          k;
  signed char        l;
  _Bool              m;
  double             o;
};

int is_big_endian() {
  int x=1;
  return *(char*)&x ? 0 : 1;
}

int main(void) {
  int i1;
  double d1;
  float  f1;

  struct s1 {
    union conv1 u1;
    char c1;
    union conv2 u2;
    char c2;
    union conv3 u3;
  } ss;

  ss.u1=(union conv1)(char)'a';
  if (ss.u1.a=='a') printf("ok1\n");
  else              printf("ng1\n");
  if (!is_big_endian())
    if (ss.u1.j=='a') printf("ok1-1\n");
    else              printf("ng1-1\n");
  else
    if (ss.u1.l=='a') printf("ok1-1\n");
    else              printf("ng1-1\n");


  i1=127;
  ss.u1=(union conv1)(char)i1;
  if (!is_big_endian())
    if (ss.u1.j==127) printf("ok1-2\n");
    else              printf("ng1-2\n");
  else
    if (ss.u1.l==127) printf("ok1-2\n");
    else              printf("ng1-2\n");

  ss.u1=(union conv1)(short)i1;
  if (ss.u1.b==127) printf("ok1-3\n");
  else              printf("ng1-3\n");

  ss.u2=(union conv2)(char)'b';
  if (ss.u2.a=='b') printf("ok2\n");
  else              printf("ng2\n");
  if (!is_big_endian())
    if (ss.u2.k=='b') printf("ok2-1\n");
    else              printf("ng2-1\n");
  else
    if (ss.u2.a=='b') printf("ok2-1\n");
    else              printf("ng2-1\n");

  d1=3.0;
  ss.u2=(union conv2)(float)d1;
  if (ss.u2.g==3.0) printf("ok2-2\n");
  else              printf("ng2-2\n");

  ss.u3=(union conv3)(char)2;
  if (ss.u3.a==2)   printf("ok3\n");
  else              printf("ng3\n");
  if (ss.u3.k.f==2) printf("ok3-1\n");
  else              printf("ng3-1\n");
  f1=3.0;
  ss.u3=(union conv3)(double)f1;
  if (ss.u3.o==3.0) printf("ok3-2\n");
  else              printf("ng3-2\n");

  return 0;
}

