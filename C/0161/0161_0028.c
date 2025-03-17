#include <stdio.h>
#ifdef I4toR8 
#define COMP_TYPE int 
#define USE_TYPE  double 
#else 
#define COMP_TYPE double 
#define USE_TYPE  int 
#endif 
void foo(COMP_TYPE const * const a, COMP_TYPE const * const b, USE_TYPE *p, USE_TYPE const * const q) { 
  int i; 
  for(i=0;i<100;++i) { 
    if (a[i] > b[i]) { 
      p[i] = q[i]; 
    } 
  } 
} 

int main(int argc, char **argv)
{
  COMP_TYPE a[100], b[100];
  USE_TYPE p[100], q[100];
  int i;
  for (i=0; i<100; i++) {
    a[i] = i;
    b[99-i] = i;
    q[i] = 1;
    p[i] = 0;
  }
  foo(a, b, p, q);
  for (i=0; i<100; i++) {
    if (i<50) {
      if (p[i] != 0) {
	printf("NG\n");
	return 0;
      }
    } else {
      if (p[i] != 1) {
	printf("NG\n");
	return 0;
      }
    }
  }
  printf("OK\n");
}
