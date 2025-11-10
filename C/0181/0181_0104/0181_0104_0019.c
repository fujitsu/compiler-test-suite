#include <stdio.h>
typedef struct {signed char b:1;
  signed char bb:2;
  signed char bbb:3;
  unsigned c:1;
  unsigned cc:2;
  unsigned ccc:3;
  unsigned x:5;
  unsigned u;
  float f;
} qwe;

int lto_sub_21(){

  qwe t,r;

  printf(" start \n");

  t.b=t.bb=t.c=1;
  r.c=r.bb=r.b=1;

  if(t.b==r.b && (t.bb+r.bb)==0 && t.c==r.c )
    ;
else
  printf("  ng 2\n");

  printf(" end \n");
}
