#include <stdio.h>
#define l 100
#define m 10
#define Correct_answer 200
#define Correct_answer2 200

double a[l],b[l],c[l];
double a2[m][m],b2[m][m],c2[m][m];

void foo1(int n)
{
  int i;

  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void foo2(int n)
{

  int i;

  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void foo3(int n)
{
  int i;


  for (i=0; i<n; i++) {
    a[i] = b[i] + c[i];
  }
}

void foo4(int n)
{
  int i,j;

  for (i=0; i<n; i++) {

    for (j=0; j<n; j++) {
      a2[i][j] = b2[i][j] + c2[i][j];
    }
  }
}

void foo5(int n)
{
  int i,j;

  for (i=0; i<n; i++) {

    for (j=0; j<n; j++) {
      a2[i][j] = b2[i][j] + c2[i][j];
    }
  }
}

int main()
{
  int i,j,result,result2;

  for (i=0; i<l; i++) {
    a[i] = 0.0;
    b[i] = 1.0;
    c[i] = 1.0;
  }  

  for (i=0; i<m; i++) {
    for (j=0; j<m; j++) {
      a2[i][j] = 0.0;
      b2[i][j] = 1.0;
      c2[i][j] = 1.0;
    }
  }  

  foo1(l);
  foo2(l);
  foo3(l);
  foo4(m);
  foo5(m);

  result = 0;
  result2 = 0;

  for (i=0; i<l; i++) {
    result += a[i];
  }

  for (i=0; i<m; i++) {
    for (j=0; j<m; j++) {
      result2 += a2[i][j];
    }
  }


  if (result != Correct_answer) {
    printf("ng result %d\n",result);
  } else {
    printf("ok\n");
  }

  if (result2 != Correct_answer2) {
    printf("ng result2 %d\n",result);
  } else {
    printf("ok\n");
  }

  return 0;
}
