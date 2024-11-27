#include <stdio.h>

int n = 5000;
int n1;
int n2;
int n3;
int n4;
int n5;

int main() {
  int i;
  float aaa[5000],ans[1000];
  
  for (i=0; i<n; ++i) {
    aaa[i] = i;
  }

  for (i=0; i<n-4000; ++i) {
    n1 = i + 1;
    n2 = i + 2;
    n3 = i + 3;
    n4 = i + 4;
    n5 = i + 5;
    aaa[n1+1500] = n1;
    aaa[n2+1501] = n2;
    aaa[n3+1502] = n3;
    aaa[n4+1503] = n4;
    aaa[n5+1504] = n5;
    aaa[n1+3000] = n1;
    aaa[n2+3001] = n2;
    aaa[n3+3002] = n3;
    aaa[n4+3003] = n4;
    aaa[n5+3004] = n5;
    ans[i] = aaa[n1+1500] + aaa[n2+1501] + aaa[n3+1502] + aaa[n4+1503] + aaa[n5+1504] +
      aaa[n1+3000] + aaa[n2+3001] + aaa[n3+3002] + aaa[n4+3003] + aaa[n5+3004];
  }
  
  if (ans[500] == 5030) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[500]);
  }
  
}
