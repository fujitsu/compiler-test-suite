#include <stdio.h>

int n = 20;

int main() {
  int  i;
  float aaa[20], ans[20];
  
  for (i=0; i<n; i++) {
    aaa[i] = i;
  }
  
  for(i=0; i<n-10; ++i) {
    ans[i] = aaa[i+1] + aaa[i+10];
  }
  
  if (ans[5] == 21) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[5]);
  }
  
}
