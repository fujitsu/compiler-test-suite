#include <stdio.h>
#include <complex.h>

void sub1(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] + c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] + c[i]; 
  }
}

void sub1_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[] ,double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] + c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] + c[i]; 
  }
}

void sub2(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] - c[i];
    e[i] = b[i] + c[i];
    a[i] = b[i] - c[i]; 
  }
}

void sub2_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] - c[i];
    e[i] = b[i] + c[i];
    a[i] = b[i] - c[i]; 
  }
}

void sub3(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] * c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] * c[i]; 
  }
}

void sub3_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] * c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] * c[i]; 
  }
}

void sub4(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] / c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] / c[i]; 
  }
}

void sub4_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] / c[i];
    e[i] = b[i] - c[i];
    a[i] = b[i] / c[i]; 
  }
}

void sub5(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], float _Complex f[],
	  int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] + d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] + c[i];
  }
}

void sub5_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], double _Complex f[],
	    int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] + d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] + c[i];
  }
}

void sub6(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], float _Complex f[],
	  int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] - d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] - c[i];
  }
}

void sub6_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], double _Complex f[],
	    int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] - d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] - c[i];
  }
}

void sub7(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], float _Complex f[],
	  int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] * d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] * c[i];
  }
}

void sub7_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], double _Complex f[],
	    int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] * d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] * c[i];
  }
}

void sub8(float _Complex a[], float _Complex b[], float _Complex c[],
	  float _Complex d[], float _Complex e[], float _Complex f[],
	  int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] / d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] / c[i];
  }
}

void sub8_2(double _Complex a[], double _Complex b[], double _Complex c[],
	    double _Complex d[], double _Complex e[], double _Complex f[],
	    int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i] / d[i];
    f[i] = b[i] - c[i];
    e[i] = d[i] + b[i] / c[i];
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
int main(){
  float _Complex   a[5],b[5],c[5],d[5],e[5],f[5];
  double _Complex  a2[5],b2[5],c2[5],d2[5],e2[5],f2[5];
  int loop_size,i;

  loop_size = 5;
  for (i=0; i<loop_size; i++){
    a[i] = 0;
    b[i]  = (i+1) + (i+2) * I;
    c[i]  = (i+1) + (i+3) * I;
    d[i] = 0;
    e[i] = 0;
    f[i] = 0;
    a2[i] = 0;
    b2[i] = (i+1) + (i+2) * I;
    c2[i] = (i+1) + (i+3) * I;
    d2[i] = 0;
    e2[i] = 0;
    f2[i] = 0;
  }

  sub1(a,b,c,d,e,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 54 && (int)(cabsf(csumf(d,loop_size))) == 54) {
    printf(" sub1 : OK\n");
  }else{
    printf(" sub1 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(d))) = %d\n",(int)(cabsf(csumf(d,loop_size))));
  }

  sub1_2(a2,b2,c2,d2,e2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 54 && (int)(cabs(csum(d2,loop_size))) == 54) {
    printf(" sub1_2 : OK\n");
  }else{
    printf(" sub1_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(d2))) = %d\n",(int)(cabs(csum(d2,loop_size))));
  }

  sub2(a,b,c,d,e,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 5 && (int)(cabsf(csumf(d,loop_size))) == 5) {
    printf(" sub2 : OK\n");
  }else{
    printf(" sub2 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(d))) = %d\n",(int)(cabsf(csumf(d,loop_size))));
  }

  sub2_2(a2,b2,c2,d2,e2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 5 && (int)(cabs(csum(d2,loop_size))) == 5) {
    printf(" sub2_2 : OK\n");
  }else{
    printf(" sub2_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(d2))) = %d\n",(int)(cabs(csum(d2,loop_size))));
  }

  sub3(a,b,c,d,e,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 164 && (int)(cabsf(csumf(d,loop_size))) == 164) {
    printf(" sub3 : OK\n");
  }else{
    printf(" sub3 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(d))) = %d\n",(int)(cabsf(csumf(d,loop_size))));
  }

  sub3_2(a2,b2,c2,d2,e2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 164 && (int)(cabs(csum(d2,loop_size))) == 164) {
    printf(" sub3_2 : OK\n");
  }else{
    printf(" sub3_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(d2))) = %d\n",(int)(cabs(csum(d2,loop_size))));
  }

  sub4(a,b,c,d,e,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 4 && (int)(cabsf(csumf(d,loop_size))) == 4) {
    printf(" sub4 : OK\n");
  }else{
    printf(" sub4 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(d))) = %d\n",(int)(cabsf(csumf(d,loop_size))));
  }

  sub4_2(a2,b2,c2,d2,e2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 4 && (int)(cabs(csum(d2,loop_size))) == 4) {
    printf(" sub4_2 : OK\n");
  }else{
    printf(" sub4_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(d2))) = %d\n",(int)(cabs(csum(d2,loop_size))));
  }

  d[0]  = 1.0f + 2.0fi;
  d2[0] = 1.0  + 2.0i;
  d[1]  = 2.0f + 3.0fi;
  d2[1] = 2.0  + 3.0i;
  d[2]  = 3.0f + 4.0fi;
  d2[2] = 3.0  + 4.0i;
  d[3]  = 4.0f + 5.0fi;
  d2[3] = 4.0  + 5.0i;
  d[4]  = 5.0f + 6.0fi;
  d2[4] = 5.0  + 6.0i;

  sub5(a,b,c,d,e,f,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 79 && (int)(cabsf(csumf(e,loop_size))) == 79) {
    printf(" sub5 : OK\n");
  }else{
    printf(" sub5 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(e))) = %d\n",(int)(cabsf(csumf(e,loop_size))));
  }

  sub5_2(a2,b2,c2,d2,e2,f2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 79 && (int)(cabs(csum(e2,loop_size))) == 79) {
    printf(" sub5_2 : OK\n");
  }else{
    printf(" sub5_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(e2))) = %d\n",(int)(cabs(csum(e2,loop_size))));
  }

  sub6(a,b,c,d,e,f,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 29 && (int)(cabsf(csumf(e,loop_size))) == 21) {
    printf(" sub6 : OK\n");
  }else{
    printf(" sub6 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(e))) = %d\n",(int)(cabsf(csumf(e,loop_size))));
  }

  sub6_2(a2,b2,c2,d2,e2,f2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 29 && (int)(cabs(csum(e2,loop_size))) == 21) {
    printf(" sub6_2 : OK\n");
  }else{
    printf(" sub6_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(e2))) = %d\n",(int)(cabs(csum(e2,loop_size))));
  }

  sub7(a,b,c,d,e,f,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 179 && (int)(cabsf(csumf(e,loop_size))) == 179) {
    printf(" sub7 : OK\n");
  }else{
    printf(" sub7 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(e))) = %d\n",(int)(cabsf(csumf(e,loop_size))));
  }

  sub7_2(a2,b2,c2,d2,e2,f2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 179 && (int)(cabs(csum(e2,loop_size))) == 179) {
    printf(" sub7_2 : OK\n");
  }else{
    printf(" sub7_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(e2))) = %d\n",(int)(cabs(csum(e2,loop_size))));
  }

  sub8(a,b,c,d,e,f,loop_size);
  if ((int)(cabsf(csumf(a,loop_size))) == 29 && (int)(cabsf(csumf(e,loop_size))) == 27) {
    printf(" sub8 : OK\n");
  }else{
    printf(" sub8 : NG (int)(cabsf(csumf(a))) = %d\n",(int)(cabsf(csumf(a,loop_size))));
    printf("           (int)(cabsf(csumf(e))) = %d\n",(int)(cabsf(csumf(e,loop_size))));
  }

  sub8_2(a2,b2,c2,d2,e2,f2,loop_size);
  if ((int)(cabs(csum(a2,loop_size))) == 29 && (int)(cabs(csum(e2,loop_size))) == 27) {
    printf(" sub8_2 : OK\n");
  }else{
    printf(" sub8_2 : NG (int)(cabs(csum(a2))) = %d\n",(int)(cabs(csum(a2,loop_size))));
    printf("             (int)(cabs(csum(e2))) = %d\n",(int)(cabs(csum(e2,loop_size))));
  }
}
