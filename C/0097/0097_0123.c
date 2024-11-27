#include <stdio.h>

int n = 5000;

int main() {
  int i;
  int etc1[5000],etc2[5000],etc3[5000],etc4[5000],etc5[5000];
  int etc6[5000],etc7[5000],etc8[5000],etc9[5000],etc10[5000];
  int etc11[5000],etc12[5000],etc13[5000],etc14[5000],etc15[5000];
  int etc16[5000],etc17[5000],etc18[5000],etc19[5000],etc20[5000];
  int aaa[5000],ans[5000];
  
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
  
  for (i=0; i<n-3000; ++i) {
    ans[i] = etc1[i] + etc2[i] + etc3[i] + etc4[i] + etc5[i] +
      etc6[i] + etc7[i] + etc8[i] + etc9[i] + etc10[i] +
      etc11[i] + etc12[i] + etc13[i] + etc14[i] + etc15[i] +
      etc16[i] + etc17[i] + etc18[i] + etc19[i] + etc20[i] +
      aaa[i+2050] + aaa[i+2055];
  }
  
  if (ans[1000] == 26356) {
    printf("OK\n");
  } else {
    printf("NG\n");
    printf("%d\n",ans[1000]);
  }
  
}
