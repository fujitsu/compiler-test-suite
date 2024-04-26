#include <stdio.h>
#include <memory.h>

unsigned long long x[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;
float y[16] ;

float z[16] = { (unsigned long long)-8, (unsigned long long)-7, (unsigned long long)-6, (unsigned long long)-5, (unsigned long long)-4, (unsigned long long)-3, (unsigned long long)-2, (unsigned long long)-1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;

int nn = 16;

void foo()
{
   int i, n = nn;
   for(i=0;i<n;i++) {
     y[i] = x[i];
   }
}
int main()
{
  int i;
  
  foo();

  if (memcmp(&y, &z, sizeof(float)*16) == 0) {
    puts("OK");
  }
  else {
    for(i=0;i<16;i++) {
      if (y[i] != z[i]) {
	printf("NG %d calc=%g ans=%g\n", i, y[i], z[i]);
      }
    }
  }
}
    


