#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#define TRUE    1
#define FALSE   0
#define SIZE    8190
#define ITER    1
#include <stdio.h>

char flags[SIZE + 1];
int main()
{
  int i, prime, k, count, iter;

  printf("%d iterations\n",ITER);
  for (iter = 1; iter <= ITER; iter++){
   count = 0;
   for (i = 0; i <= SIZE; i++) flags [i] = TRUE;
   for (i = 0; i <= SIZE; i++){
           if (flags [i]){
                   prime = i + i + 3;
                   for (k = i + prime; k <= SIZE; k+= prime){
                           flags [k] = FALSE;
                   }
                   count++;        
           }
   }
  }
  printf("%d primes\n", count);
  if( count == 1899 ) {
    puts("  SCRLP43 OK  ");
  }
  else {
    puts("  SCRLP43 NG  ");
  }
exit (0);
}
