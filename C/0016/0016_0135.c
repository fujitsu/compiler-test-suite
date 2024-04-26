#include <stdio.h>
#include <complex.h>
#include <math.h>

#define N 5

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
int main()
{
  float _Complex a,b[N],c[N+1];
  float dist;
  const double ABSOLUTE_ERROR = 0.000001;
  int i,loop_size;

  loop_size=N;

  for (i=0; i<loop_size; i++) {
    b[i] = (i+1) + (i+2) * I;
    c[i] = (i+1) + (i+3) * I; 
  }
  
  a = 0;
  loop1(&a,b,loop_size);
  if((crealf(a) == 15.0) && (cimagf(a) == 20.0)){
    printf(" loop1 : OK\n");
  }else{
    printf(" loop1 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop1_2(&a,b,loop_size);
  if((crealf(a) == 15.0) && (cimagf(a) == 20.0)){
    printf(" loop1_2 : OK\n");
  }else{
    printf(" loop1_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }
  
  loop2(&a,b,loop_size);
  if((fabs(crealf(a) - 1.5) <= ABSOLUTE_ERROR) &&
     (fabs(cimagf(a) - 2.0) <= ABSOLUTE_ERROR)) {
    printf(" loop2 : OK\n");
  }else{
    printf(" loop2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop2_2(&a,b,loop_size);
  if((fabs(crealf(a) - 1.5) <= ABSOLUTE_ERROR) &&
     (fabs(cimagf(a) - 2.0) <= ABSOLUTE_ERROR)) {
    printf(" loop2_2 : OK\n");
  }else{
    printf(" loop2_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop3(&a,b,loop_size);
  if((fabs(crealf(a) - 1.5) <= ABSOLUTE_ERROR) &&
     (fabs(cimagf(a) - 2.0) <= ABSOLUTE_ERROR)) {
    printf(" loop3 : OK\n");
  }else{
    printf(" loop3 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop3_2(&a,b,loop_size);
  if((fabs(crealf(a) - 1.5) <= ABSOLUTE_ERROR) &&
     (fabs(cimagf(a) - 2.0) <= ABSOLUTE_ERROR)) {
    printf(" loop3_2 : OK\n");
  }else{
    printf(" loop3_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop4(&a,b,loop_size);
  if((fabs((double)(crealf(a) - 1.0f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(a)-1.4f)) < ABSOLUTE_ERROR)) {
    printf(" loop4 : OK\n");
  }else{
    printf(" loop4 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop4_2(&a,b,loop_size);
  if((fabs((double)(crealf(a) - 1.0f)) < ABSOLUTE_ERROR) && (fabs((double)(cimagf(a)-1.4f)) < ABSOLUTE_ERROR)) {
    printf(" loop4_2 : OK\n");
  }else{
    printf(" loop4_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop5(&a,b,loop_size);
  dist = cabsf(a - (1.6f + 2.2fi));
  if(dist < 0.01){
    printf(" loop5 : OK\n");
  }else{
    printf(" loop5 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop5_2(&a,b,loop_size);
  dist = cabsf(a - (1.6f + 2.2fi));
  if(dist < 0.01) {
    printf(" loop5_2 : OK\n");
  }else{
    printf(" loop5_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop7(&a,b,loop_size,c);
  if((crealf(a) == 17.0) && (cimagf(a) == 24.0)){
    printf(" loop7 : OK\n");
  }else{
    printf(" loop7 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop7_2(&a,b,loop_size,c);
  if((crealf(a) == 32.0) && (cimagf(a) == 44.0)){
    printf(" loop7_2 : OK\n");
  }else{
    printf(" loop7_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop8(&a,loop_size,c);
  if((crealf(a) == 37.0) && (cimagf(a) == 51.0)){
    printf(" loop8 : OK\n");
  }else{
    printf(" loop8 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }

  loop8_2(&a,loop_size,c);
  if((crealf(a) == 37.0) && (cimagf(a) == 51.0)){
    printf(" loop8_2 : OK\n");
  }else{
    printf(" loop8_2 : NG a=(%f,%f)\n",crealf(a),cimag(a));
  }
}


