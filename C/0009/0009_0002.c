#include <stdio.h>
#include <memory.h>

signed       int x[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;
double y[16] ;

double z[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
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

  if (memcmp(&y, &z, sizeof(double)*16) == 0) {
    puts("OK");
  }
  else {
    for(i=0;i<16;i++) {
      if (y[i] != z[i]) {
	printf("NG %d calc=%f ans=%f\n", i, y[i], z[i]);
      }
    }
  }
}
    


