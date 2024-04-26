#include <stdio.h>
#include <memory.h>

signed long long x[16] = {  -8, -7, -6, -5, -4, -3, -2, -1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;
void * y[16] ;

//void *  z[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
signed long long  z[16] = { -8, -7, -6, -5, -4, -3, -2, -1,
			   0, 1, 2, 3, 4, 5, 6, 7} ;

int nn = 16;

void foo()
{
   int i, n = nn;
   for(i=0;i<n;i++) {
     y[i] = (void*)x[i];
   }
}
int main()
{
  int i;
  
  foo();

  if (memcmp(&y, &z, sizeof(void * )*16) == 0) {
    puts("OK");
  }
  else {
    for(i=0;i<16;i++) {
      if ((signed long long)y[i] != z[i]) {
	printf("NG %d calc=%llx ans=%llx\n", i, (signed long long )y[i], z[i]);
      }
    }
  }
}
    


