#include <stdio.h>
#include <memory.h>

unsigned long long x[16] = {  (unsigned )-8, (unsigned )-7, (unsigned )-6, (unsigned )-5, (unsigned )-4, (unsigned )-3, (unsigned )-2, (unsigned )-1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;
unsigned int y[16] ;

unsigned int z[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
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

  if (memcmp(&y, &z, sizeof(unsigned int )*16) == 0) {
    puts("OK");
  }
  else {
    for(i=0;i<16;i++) {
      if (y[i] != z[i]) {
	printf("NG %d calc=%x ans=%x\n", i, y[i], z[i]);
      }
    }
  }
}
    


