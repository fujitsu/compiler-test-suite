#include <stdio.h>

int n = 20;
int n1;
int n2;
int n3;
int n4;
int n5;
int n6;
int n7;
int n8;
int n9;
int n10;
int n11;
int n12;
int n13;
int n14;
int n15;
int n16;
int n17;
int n18;
int n19;
int n20;

int main() {
  int i;
  double aaa[100];
  
  for (i=0; i<n+80; ++i) {
    aaa[i] = i;
  }

  for (i=0; i<n; ++i) {
    n1 = i + 1;
    n2 = i + 2;
    n3 = i + 3;
    n4 = i + 4;
    n5 = i + 5;
    n6 = i + 6;
    n7 = i + 7;
    n8 = i + 8;
    n9 = i + 9;
    n10 = i + 10;
    n11 = i + 11;
    n12 = i + 12;
    n13 = i + 13;
    n14 = i + 14;
    n15 = i + 15;
    n16 = i + 16;
    n17 = i + 17;
    n18 = i + 18;
    n19 = i + 19;
    n20 = i + 20;
    aaa[n1+1] = n1;
    aaa[n2+1] = n2;
    aaa[n3+1] = n3;
    aaa[n4+1] = n4;
    aaa[n5+1] = n5;
    aaa[n6+1] = n6;
    aaa[n7+1] = n7;
    aaa[n8+1] = n8;
    aaa[n9+1] = n9;
    aaa[n10+1] = n10;
    aaa[n11+1] = n11;
    aaa[n12+1] = n12;
    aaa[n13+1] = n13;
    aaa[n14+1] = n14;
    aaa[n15+1] = n15;
    aaa[n16+1] = n16;
    aaa[n17+1] = n17;
    aaa[n18+1] = n18;
    aaa[n19+1] = n19;
    aaa[n20+1] = n20;
  }
  
  if (aaa[20] == 19) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%f\n",aaa[20]);
  }
  
}
