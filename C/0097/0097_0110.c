#include <stdio.h>

int n = 20;
int n1;
int n2;
int n3;
int n4;
int n5;

int main() {
  int i;
  double aaa[100],ans[20];
  
  for (i=0; i<n+80; ++i) {
    aaa[i] = i;
  }

  for (i=0; i<n; ++i) {
    n1 = i + 1;
    n2 = i + 2;
    n3 = i + 3;
    n4 = i + 4;
    n5 = i + 5;
    aaa[n1+1] = n1;
    aaa[n2+1] = n2;
    aaa[n3+1] = n3;
    aaa[n4+1] = n4;
    aaa[n5+1] = n5;
    aaa[n1+2] = n1;
    aaa[n2+2] = n2;
    aaa[n3+2] = n3;
    aaa[n4+2] = n4;
    aaa[n5+2] = n5;
    ans[i] = aaa[n1+1] + aaa[n2+1] + aaa[n3+1] + aaa[n4+1] + aaa[n5+1] +
      aaa[n1+2] + aaa[n2+2] + aaa[n3+2] + aaa[n4+2] + aaa[n5+2];
  }
  
  if (ans[6] == 86) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",ans[6]);
  }
  
}
