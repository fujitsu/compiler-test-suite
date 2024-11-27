

#include <math.h>
#include <stdio.h>
#define N 1000

void f (int n, float a[N], int index1[N]) {
  int i;
  
   
  for (i = 0; i <  n; i++){
    int ii = index1[i];
    a[ii] = sin(a[ii]);
  }
}

int main(){
  float a[N];
  int index1[N];
  int success = 1;
  int i;

  for (i = 0; i < N; i++) {
    a[i] = 0;
    index1[i] = i;
  }
  
  f (N, a, index1);
  
  for (i = 0; i < N; i++) {
    if (! (a[i] < 0 + 0.1) && (0 - 0.1 < a[i])) {
      success = 0;
    }
  }

  if (success == 0) {
    printf ("OK");
  }
  else {
    printf ("NG");
  }

  return 0;
}
