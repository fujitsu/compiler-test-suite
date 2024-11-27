#include <stdio.h>

int n = 20;
int ans[20];

int main() {
  int  i,aaa[20];
  
  for (i=0; i<n; i++) {
    aaa[i] = i;
  }
  
  for(i=0; i<n-10; ++i) {
    ans[i] = aaa[i+1];
  }
  
  if (ans[5] == 6) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",ans[5]);
  }
  
}
