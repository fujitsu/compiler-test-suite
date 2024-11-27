#include <stdio.h>

#define ANSWER 999.0f

void foo1(int *p, int *q)
{
  int i;
  for( i=0; i<1000; i++) {
    p[i] = q[i];
  }
}

int main(void) {
  int arr1[1000];
  int arr2[1000];
  double result = 0.0;
  int i;
  for (i=0; i<1000; ++i) {
    arr1[i] = 0;
    arr2[i] = i;
  }
  foo1(arr1,arr2);

  result = arr1[0] + arr1[999];

  if( (result - ANSWER) == 0 ) {
    printf("%s\n", "ok");
  } else {
    printf("%s: \n", "ng");
    printf("Correct Answer: %lf \n", ANSWER);
    printf("Execution Result: %lf \n", result);
  }

  return 1;
}
