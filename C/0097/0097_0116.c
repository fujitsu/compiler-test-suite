#include <stdio.h>

int n = 20;
long etc1[20],etc2[20],etc3[20],etc4[20],etc5[20];
long etc6[20],etc7[20],etc8[20],etc9[20],etc10[20];
long etc11[20],etc12[20],etc13[20],etc14[20],etc15[20];
long etc16[20],etc17[20],etc18[20],etc19[20],etc20[20];
long ans[10];

int main() {
  int i;
  long aaa[20];
  
  for (i=0; i<n; ++i) {
    etc1[i] = i;
    etc2[i] = i + 2;
    etc3[i] = i + 3;
    etc4[i] = i + 4;
    etc5[i] = i + 5;
    etc6[i] = i + 6;
    etc7[i] = i + 7;
    etc8[i] = i + 8;
    etc9[i] = i + 9;
    etc10[i] = i + 10;
    etc11[i] = i + 11;
    etc12[i] = i + 12;
    etc13[i] = i + 13;
    etc14[i] = i + 14;
    etc15[i] = i + 15;
    etc16[i] = i + 16;
    etc17[i] = i + 17;
    etc18[i] = i + 18;
    etc19[i] = i + 19;
    etc20[i] = i + 20;
    aaa[i] = i + 21;
  }
  
  for (i=0; i<n-10; ++i) {
    ans[i] = etc1[i] + etc2[i] + etc3[i] + etc4[i] + etc5[i] +
      etc6[i] + etc7[i] + etc8[i] + etc9[i] + etc10[i] +
      etc11[i] + etc12[i] + etc13[i] + etc14[i] + etc15[i] +
      etc16[i] + etc17[i] + etc18[i] + etc19[i] + etc20[i] +
      aaa[i+1];
  }
  
  if (ans[6] == 357) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",ans[6]);
  }
  
}
