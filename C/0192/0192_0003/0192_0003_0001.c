#include <stdio.h>
#include <complex.h>
#include <math.h>

void loop1(float _Complex *a, float _Complex b[], int loop_size)
{
  int i;
  for (i=0; i<loop_size ;i++) {
    *a = *a + b[i];
  }
}

void loop1_2(float _Complex *a, float _Complex b[], int loop_size)
{
  int i;
  *a = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    *a = b[i]+ *a;
  }
}

void loop2(float _Complex *a, float _Complex b[], int loop_size)
{
  int i;
  *a = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    *a = *a + b[i] / 10.0f;
  }
}

void loop2_2(float _Complex *a, float _Complex b[], int loop_size)
{
  int i;
  *a = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    *a = b[i] / 10.0f + *a;
  }
}

void loop3(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p,q,r;
  int i;
  p = 0.0f + 0.0fi;
  q = 0.0f + 0.0fi;
  r = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    p = p + b[i] / 10.0f;
    q = q + b[i] / 10.0f;
    r = r + b[i] / 10.0f;
  }
  *a = p;
}

void loop3_2(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p,q,r;
  int i;

  p = 0.0f + 0.0fi;
  q = 0.0f + 0.0fi;
  r = 0.0f + 0.0fi;
  
  for (i=0; i<loop_size ;i++) {
    p = b[i] / 10.0f + p;
    q = b[i] / 10.0f + q;
    r = b[i] / 10.0f + r;
  }
  *a = p;
}

void loop4(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p,q,r;
  int i;

  p = 0.0f + 0.0fi;
  q = 0.0f + 0.0fi;
  r = 0.0f + 0.0fi;

  for (i=0; i<loop_size ;i++) {
    p = r;
    q =  p + b[i] / 10.0f;
    r = q;
  }
  *a = p;
}

void loop4_2(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p,q,r;
  int i;

  p = 0.0f + 0.0fi;
  q = 0.0f + 0.0fi;
  r = 0.0f + 0.0fi;

  for (i=0; i<loop_size ;i++) {
    p = r;
    q = b[i] / 10.0f + p;
    r = q;
  }
  *a = p;
}

void loop5(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p;
  int i;

  p = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    p = p + b[i] / 10.0f;
    if(crealf(b[i]) < 2.0) {
      p = p * 2;
    }
  }
  *a = p;
}

void loop5_2(float _Complex *a, float _Complex b[], int loop_size)
{
  float _Complex p;
  int i;

  p = 0.0f + 0.0fi;
  for (i=0; i<loop_size ;i++) {
    p = b[i] / 10.0f + p;
    if(crealf(b[i]) < 2.0) {
      p = p * 2.0f;
    }
  }
  *a = p;
}

void loop7(float _Complex *a, float _Complex b[], int loop_size, float _Complex c[])
{
  int i,k;
  k=1;
  for (i=0; i<loop_size ;i++) {
    c[k]=c[k]+b[i];
  }
  *a = c[k];
}

void loop7_2(float _Complex *a, float _Complex b[], int loop_size, float _Complex c[])
{
  int i,k;
  k=1;
  for (i=0; i<loop_size ;i++) {
    c[k]=b[i]+c[k];
  }
  *a = c[k];
}

void loop8(float _Complex *a, int loop_size, float _Complex c[])
{
  int i,k;
  k=loop_size+1;
  for (i=0; i<loop_size ;i++) {
    c[k]=c[1]+c[i];
  }
  *a = c[k];
}

void loop8_2(float _Complex *a, int loop_size, float _Complex c[])
{
  int i,k;
  k=loop_size+1;
  for (i=0; i<loop_size ;i++) {
    c[k]=c[i]+c[1];
  }
  *a = c[k];
}

