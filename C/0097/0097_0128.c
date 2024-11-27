#include <stdio.h>

int n = 5000;
long ans[20];
long aaa[5000];

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
    printf("%d\n",ans[5]);
  }
  
}
