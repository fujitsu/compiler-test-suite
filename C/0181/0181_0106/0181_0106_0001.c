#include "stdio.h"

int lto_sub_2()
{
  char a1[10];
  char b1[10][10];
  int i,j;

  typedef struct {
    int a2[300];
    int b2[300][300];
  } str;

  str str1;

  union un {
    float a3[300];
    float b3[300][300];
  };

  union un un1;
  union un un2;

  for (j=0; j<10; j++) {
    for (i=0; i<10; i++) {
      a1[i] = 'A' + i;
      b1[i][j] = a1[i] + j;
    }
  }

  for (i=0; i<10; i++) {
    fprintf(stdout, "a1 = %4.4x\n", a1[i]);
  }

  fprintf(stdout, "b1 = %4.4x\n", b1[0][0]);

  for (j=0; j<300; j++) {
    for (i=0; i<300; i++) {
      str1.a2[i] = i;
      str1.b2[i][j] = str1.a2[i] + j;
    }
  }

  for (i=0; i<300; i++) {
    fprintf(stdout, "a2 = %d\n", str1.a2[i]);
  }

  fprintf(stdout, "b2 = %d\n", str1.b2[0][0]);

  for (j=0; j<300; j++) {
    for (i=0; i<300; i++) {
      un1.a3[i] = i;
      un2.b3[i][j] = un1.a3[i] + j;
    }
  }

  for (i=0; i<300; i++) {
    fprintf(stdout, "a3 = %f\n", un1.a3[i]);
  }

  fprintf(stdout, "b3 = %f\n", un2.b3[0][0]);
}
  
