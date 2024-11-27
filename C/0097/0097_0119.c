#include <stdio.h>

int n = 5000;

int main() {
  int  i,aaa[5000], ans[5000];
  
  for (i=0; i<n; i++) {
    aaa[i] = i;
  }
  
  for(i=0; i<n-3000; ++i) {
    ans[i] = aaa[i+2500] + aaa[i+2505];
  }
  
  if (ans[1000] == 7005) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",ans[1000]);
  }
  
}
