#include <stdio.h>


#define N 50
#define ANS 1225
int main()
{
  int i;
  int sum = 0;

  for (i = 0; i < N; i++) {
    sum += i;
  }

  printf("sum  = %d --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}
