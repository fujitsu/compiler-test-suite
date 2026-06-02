#include <stdio.h>
#include <complex.h>
#include <math.h>

void loop1(float _Complex *a, float _Complex b[], int loop_size);
void loop1_2(float _Complex *a, float _Complex b[], int loop_size);
void loop2(float _Complex *a, float _Complex b[], int loop_size);
void loop2_2(float _Complex *a, float _Complex b[], int loop_size);
void loop3(float _Complex *a, float _Complex b[], int loop_size);
void loop3_2(float _Complex *a, float _Complex b[], int loop_size);
void loop4(float _Complex *a, float _Complex b[], int loop_size);
void loop4_2(float _Complex *a, float _Complex b[], int loop_size);
void loop5(float _Complex *a, float _Complex b[], int loop_size);
void loop5_2(float _Complex *a, float _Complex b[], int loop_size);
void loop7(float _Complex *a, float _Complex b[], int loop_size, float _Complex c[]);
void loop7_2(float _Complex *a, float _Complex b[], int loop_size, float _Complex c[]);
void loop8(float _Complex *a, int loop_size, float _Complex c[]);
void loop8_2(float _Complex *a, int loop_size, float _Complex c[]);
int main()
{
  float _Complex a,b[5],c[5];
  float dist;
  const double ABSOLUTE_ERROR = 0.000001;
  int i,loop_size;

  loop_size=5;

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


