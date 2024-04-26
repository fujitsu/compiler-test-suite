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
int main()
{
  float _Complex  a[5], b[5];
  double _Complex a2[5],b2[5];
  int loop_size,i;

  loop_size=5;
  for (i=0; i<loop_size; i++){
    a[i]  = 0;
    b[i]  = (i+1) + (i+2) * I;
    a2[i] = 0;
    b2[i] = (i+1) + (i+2) * I;
  }

  sub1(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==25) {
    printf(" sub1 : OK\n");
  }else{
    printf(" sub1 : NG %d != 25\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub1_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==25) {
    printf(" sub1_2 : OK\n");
  }else{
    printf(" sub1_2 : NG %d != 25\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub2(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==25) {
    printf(" sub2 : OK\n");
  }else{
    printf(" sub2 : NG %d != 25\n",(int)(cabsf(csumf(a,loop_size))));
  }
  
  sub2_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==25) {
    printf(" sub2_2 : OK\n");
  }else{
    printf(" sub2_2 : NG %d != 25\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub3(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==0) {
    printf(" sub3 : OK\n");
  }else{
    printf(" sub3 : NG %d != 0\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub3_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==0) {
    printf(" sub3_2 : OK\n");
  }else{
    printf(" sub3_2 : NG %d != 0\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub4(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==0) {
    printf(" sub4 : OK\n");
  }else{
    printf(" sub4 : NG %d != 0\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub4_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==0) {
    printf(" sub4_2 : OK\n");
  }else{
    printf(" sub4_2 : NG %d != 0\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub5(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==35) {
    printf(" sub5 : OK\n");
  }else{
    printf(" sub5 : NG %d != 35\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub5_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==35) {
    printf(" sub5_2 : OK\n");
  }else{
    printf(" sub5_2 : NG %d != 35\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub6(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==74) {
    printf(" sub6 : OK\n");
  }else{
    printf(" sub6 : NG %d != 74\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub6_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==74) {
    printf(" sub6_2 : OK\n");
  }else{
    printf(" sub6_2 : NG %d != 74\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub7(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==11) {
    printf(" sub7 : OK\n");
  }else{
    printf(" sub7 : NG %d != 11\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub7_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==11) {
    printf(" sub7_2 : OK\n");
  }else{
    printf(" sub7_2 : NG %d != 11\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub8(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==137) {
    printf(" sub8 : OK\n");
  }else{
    printf(" sub8 : NG %d != 137\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub8_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==137) {
    printf(" sub8_2 : OK\n");
  }else{
    printf(" sub8_2 : NG %d != 137\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub9(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==26) {
    printf(" sub9 : OK\n");
  }else{
    printf(" sub9 : NG %d != 26\n",(int)(cabsf(csumf(a,loop_size))));
  }
  
  sub9_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==26) {
    printf(" sub9_2 : OK\n");
  }else{
    printf(" sub9_2 : NG %d != 26\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub10(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==74) {
    printf(" sub10 : OK\n");
  }else{
    printf(" sub10 : NG %d != 74\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub10_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==74) {
    printf(" sub10_2 : OK\n");
  }else{
    printf(" sub10_2 : NG %d != 74\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub11(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==11) {
    printf(" sub11 : OK\n");
  }else{
    printf(" sub11 : NG %d != 11\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub11_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==11) {
    printf(" sub11_2 : OK\n");
  }else{
    printf(" sub11_2 : NG %d != 11\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub12(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==137) {
    printf(" sub12 : OK\n");
  }else{
    printf(" sub12 : NG %d != 137\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub12_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==137) {
    printf(" sub12_2 : OK\n");
  }else{
    printf(" sub12_2 : NG %d != 137\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub13(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size)))==26) {
    printf(" sub13 : OK\n");
  }else{
    printf(" sub13 : NG %d != 26\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub13_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size)))==26) {
    printf(" sub13_2 : OK\n");
  }else{
    printf(" sub13_2 : NG %d != 26\n",(int)(cabs(csum(a2,loop_size))));
  }
}
