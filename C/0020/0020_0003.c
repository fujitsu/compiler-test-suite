/*****************************************
 * Testing the restrict qualification
 *****************************************/

#include <stdio.h>

void foo1(char * restrict cp1, char * restrict cq1) {
  cp1[0] = 1;
  cq1[0] = 3;
  cp1[0] = cp1[0] + 1;

  if (cp1[0] == 2) {
    puts("cp1&cq1 optimization : ok");
  } else {
    puts("cp1&cq1 optimization : ng");
  }

}

void foo2(int * restrict cp2, int * restrict cq2) {
  cp2[0] = 1;
  cq2[0] = 3;
  cp2[0] = cp2[0] + 1;

  if (cp2[0] == 2) {
    puts("cp2&cq2 optimization : ok");
  } else {
    puts("cp2&cq2 optimization : ng");
  }

}

void foo3(unsigned char * restrict cp3, unsigned char * restrict cq3) {
  cp3[0] = 1;
  cq3[0] = 3;
  cp3[0] = cp3[0] + 1;

  if (cp3[0] == 2) {
    puts("cp3&cq3 optimization : ok");
  } else {
    puts("cp3&cq3 optimization : ng");
  }

}

void foo4(long * restrict cp4, long * restrict cq4) {
  cp4[0] = 1;
  cq4[0] = 3;
  cp4[0] = cp4[0] + 1;

  if (cp4[0] == 2) {
    puts("cp4&cq4 optimization : ok");
  } else {
    puts("cp4&cq4 optimization : ng");
  }

}

void foo5(unsigned int * restrict cp5, unsigned int * restrict cq5) {
  cp5[0] = 1;
  cq5[0] = 3;
  cp5[0] = cp5[0] + 1;

  if (cp5[0] == 2) {
    puts("cp5&cq5 optimization : ok");
  } else {
    puts("cp5&cq5 optimization : ng");
  }
}

void foo6(short * restrict cp6, short * restrict cq6) {
  cp6[0] = 1;
  cq6[0] = 3;
  cp6[0] = cp6[0] + 1;

  if (cp6[0] == 2) {
    puts("cp6&cq6 optimization : ok");
  } else {
    puts("cp6&cq6 optimization : ng");
  }
}

void foo7(unsigned short * restrict cp7, unsigned short * restrict cq7) {
  cp7[0] = 1;
  cq7[0] = 3;
  cp7[0] = cp7[0] + 1;

  if (cp7[0] == 2) {
    puts("cp7&cq7 optimization : ok");
  } else {
    puts("cp7&cq7 optimization : ng");
  }
}

void foo8(unsigned long * restrict cp8, unsigned long * restrict cq8) {
  cp8[0] = 1;
  cq8[0] = 3;
  cp8[0] = cp8[0] + 1;

  if (cp8[0] == 2) {
    puts("cp8&cq8 optimization : ok");
  } else {
    puts("cp8&cq8 optimization : ng");
  }
}

void foo9(float * restrict cp9, float * restrict cq9) {
  cp9[0] = 1.0;
  cq9[0] = 3.0;
  cp9[0] = cp9[0] + 1.0;

  if (cp9[0] == 2.0){
    puts("cp9&cq9 optimization : ok");
  } else {
    puts("cp9&cq9 optimization : ng");
  }
}

void foo10(double * restrict cp10, double * restrict cq10) {
  cp10[0] = 1.0;
  cq10[0] = 3.0;
  cp10[0] = cp10[0] + 1.0;

  if (cp10[0] == 2.0){
    puts("cp10&cq10 optimization : ok");
  } else {
    puts("cp10&cq10 optimization : ng");
  }
}

void foo11(long double * restrict cp11, long double * restrict cq11) {
  cp11[0] = 1;
  cq11[0] = 3;
  cp11[0] = cp11[0] + 1;

  if (cp11[0] == 2) {
    puts("cp11&cq11 optimization : ok");
  } else {
    puts("cp11&cq11 optimization : ng");
  }
}

void foo12(long long * restrict cp12, long long * restrict cq12) {
  cp12[0] = 1;
  cq12[0] = 3;
  cp12[0] = cp12[0] + 1;

  if (cp12[0] == 2) {
    puts("cp12&cq12 optimization : ok");
  } else {
    puts("cp12&cq12 optimization : ng");
  }
}

int main() {
  char cp1[2];
  char  *cq1;

  int cp2[2];
  int  *cq2;

  unsigned char cp3[2];
  unsigned char *cq3;

  long cp4[2];
  long *cq4;

  unsigned int cp5[2];
  unsigned int *cq5;

  short cp6[2];
  short *cq6;

  unsigned short cp7[2];
  unsigned short *cq7;

  unsigned long cp8[2];
  unsigned long *cq8;

  float cp9[2];
  float *cq9;

  double cp10[2];
  double *cq10;

  long double cp11[2];
  long double *cq11;

  long long cp12[2];
  long long *cq12;

  cq1 = cp1;
  foo1(cp1, cq1);

  cq2 = cp2;
  foo2(cp2, cq2);

  cq3 = cp3;
  foo3(cp3, cq3);

  cq4 = cp4;
  foo4(cp4, cq4);

  cq5 = cp5;
  foo5(cp5, cq5);

  cq6 = cp6;
  foo6(cp6, cq6);

  cq7 = cp7;
  foo7(cp7, cq7);

  cq8 = cp8;
  foo8(cp8, cq8);

  cq9 = cp9;
  foo9(cp9, cq9);

  cq10 = cp10;
  foo10(cp10, cq10);

  cq11 = cp11;
  foo11(cp11, cq11);

  cq12 = cp12;
  foo12(cp12, cq12);

  return 0;
}
