#include <stdio.h>

#define ANSWER 1002.0f

void foo1(int m, int *a)
{
  int i;

  for( i=0; i<1000; i++) {
    a[i] = a[i+m] + 1;
  }
}

int main(void) {
  int arr[1001];
  double result = 0.0;
  int i;
  for (i=0; i<1001; ++i) {
    arr[i] = i;
  }
  foo1(1,arr);
  
  result = arr[0] + arr[1000];
  if( (result - ANSWER) == 0 ) {
    printf("%s\n", "ok");
  } else {
    printf("%s: \n", "ng");
    printf("Correct Answer: %lf \n", ANSWER);
    printf("Execution Result: %lf \n", result);
  }

  return 1;
}
