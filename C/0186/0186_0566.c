#include <stdio.h>

long int zzz;
long int n = 1;

int main() {
  long int x1[10],x2[10],x3[10],x4[10],x5[10],x6[10],x7[10],x8[10],x9[10],x10[10];
  long int x11[10],x12[10],x13[10],x14[10],x15[10],x16[10],x17[10],x18[10],x19[10],x20[10];
  long int x21[10],x22[10],x23[10],x24[10],x25[10],x26[10],x27[10],x28[10],x29[10],x30[10];
  long int xxx[10];
  long int i;
  
  for (i=0; i<10; i++) {
    x1[i] = i;
    x2[i] = i+1;
    x3[i] = i+2;
    x4[i] = i+3;
    x5[i] = i+4;
    x6[i] = i+5;
    x7[i] = i+6;
    x8[i] = i+7;
    x9[i] = i+8;
    x10[i] = i+9;
    x11[i] = i+10;
    x12[i] = i+11;
    x13[i] = i+12;
    x14[i] = i+13;
    x15[i] = i+14;
    x16[i] = i+15;
    x17[i] = i+16;
    x18[i] = i+17;
    x19[i] = i+18;
    x20[i] = i+19;
    x21[i] = i+20;
    x22[i] = i+21;
    x23[i] = i+22;
    x24[i] = i+23;
    x25[i] = i+24;
    x26[i] = i+25;
    x27[i] = i+26;
    x28[i] = i+27;
    x29[i] = i+28;
    x30[i] = i+29;
    xxx[i] = 0;
  }

  for (i=0; i<n; i++) {
    xxx[1] = x1[i]+x2[i]+x3[i]+x4[i]+x5[i]+x6[i]+x7[i]+x8[i]+x9[i]+x10[i]+
      x11[i]+x12[i]+x13[i]+x14[i]+x15[i]+x16[i]+x17[i]+x18[i]+x19[i]+x20[i]+
      x21[i]+x22[i]+x23[i]+x24[i]+x25[i]+x26[i]+x27[i]+x28[i]+x29[i]+x30[i];
  }
  if (xxx[1] == 435) {
    printf("OK\n");
  } else {
    printf("NG %d\n",xxx[1]);
  }
  return 1;
}
