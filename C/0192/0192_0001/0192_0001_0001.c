#include <stdio.h>
#include <complex.h>

void sub1(float _Complex a[] , float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (0.0f + 0.0fi);
  }
}

void sub1_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (0.0 + 0.0i);
  }
}

void sub2(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] - (0.0f + 0.0fi);
  }
}

void sub2_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] - (0.0 + 0.0i);
  }
}

void sub3(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * (0.0f + 0.0fi);
  }
}

void sub3_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * (0.0 + 0.0i);
  }
}

void sub4(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (0.0f + 0.0fi) / b[i];
  }
}

void sub4_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (0.0 + 0.0i) / b[i];
  }
}

void sub5(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * (1.0f + 1.0fi);
  }
}

void sub5_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * (1.0 + 1.0i);
  }
}

void sub6(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0f + 2.0fi) + (4.0f + 5.0fi) + b[i];
  }
}

void sub6_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0 + 2.0i) + (4.0 + 5.0i) + b[i];
  }
}

void sub7(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0f + 2.0fi) - (4.0f + 5.0fi) + b[i];
  }
}

void sub7_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0 + 2.0i) - (4.0 + 5.0i) + b[i];
  }
}

void sub8(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0f + 2.0fi) * (4.0f + 5.0fi) + b[i];
  }
}

void sub8_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0 + 2.0i) * (4.0 + 5.0i) + b[i];
  }
}

void sub9(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0f + 2.0fi) / (4.0f + 5.0fi) + b[i];
  }
}

void sub9_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = (3.0 + 2.0i) / (4.0 + 5.0i) + b[i];
  }
}

void sub10(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0f + 2.0fi) + (4.0f + 5.0fi); 
  }
}

void sub10_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0 + 2.0i) + (4.0 + 5.0i); 
  }
}

void sub11(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0f +2.0fi) - (4.0f + 5.0fi) ;
  }
}

void sub11_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0 + 2.0i) - (4.0 + 5.0i); 
  }
}

void sub12(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0f + 2.0fi) * (4.0f + 5.0fi); 
  }
}

void sub12_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0 + 2.0i) * (4.0 + 5.0i);
  }
}

void sub13(float _Complex a[], float _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0f + 2.0fi) / (4.0f + 5.0fi); 
  }
}

void sub13_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + (3.0 + 2.0i) / (4.0 + 5.0i); 
  }
}

float _Complex csumf(float _Complex elm[], int index) {
  int i;
  float _Complex ans;
  
  ans = 0.0f + 0.0fi; 
  for (i=0; i<index; i++) {
    ans = ans + elm[i]; 
  }
  return ans;
}

double _Complex csum(double _Complex elm[], int index) {
  int i;
  double _Complex ans;
  
  ans = 0.0 + 0.0i; 
  for (i=0; i<index; i++) {
    ans = ans + elm[i]; 
  }
  return ans;
}
