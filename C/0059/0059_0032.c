
#include<stdio.h>
#include <stdbool.h>
#include <complex.h>

union convert {
  unsigned char      a;
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
};


int is_big_endian() {
  int x=1;
  return *(char*)&x ? 0 : 1;
}

int main(void) {
  union convert u;
  unsigned char      a=1;

  u.h=0.0;
  if (u.f==0) printf("ok1\n");
  else        printf("ng1\n");

  u = (union convert)(long)a;
  
  if (!is_big_endian()) {
    if (u.j==1) printf("ok2\n");
    else        printf("ng2\n");
  } else {
    if (u.e==1) printf("ok2\n");
    else        printf("ng2\n");
  }

  return 0;
}
