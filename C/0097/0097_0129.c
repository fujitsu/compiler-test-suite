#include <stdio.h>

int n = 5000;
float ans[20];
float aaa[5000];

int main() {
  int  i;
  
  for (i=0; i<n; i++) {
    aaa[i] = i;
  }
  
  for(i=0; i<n-4980; ++i) {
    ans[i] = aaa[i+4980];
  }
  
  if (ans[5] == 4985) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[5]);
  }
  
}
