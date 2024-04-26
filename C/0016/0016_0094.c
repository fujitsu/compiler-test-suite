#include <stdio.h>
#include <complex.h>

void sub1(float _Complex a[], float _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+b[k];
  }
}

void sub1_2(double _Complex a[], double _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+b[k];
  }
}

void sub2(float _Complex a[], float _Complex b[], float _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+(b[k]+c[k]);
  }
}

void sub2_2(double _Complex a[], double _Complex b[], double _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+(b[k]+c[k]);
  }
}

void sub3(float _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+a[k];
  }
}

void sub3_2(double _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]+a[k];
  }
}

void sub4(float _Complex a[], float _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-b[k];
  }
}

void sub4_2(double _Complex a[], double _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-b[k];
  }
}

void sub5(float _Complex a[], float _Complex b[], float _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-(b[k]+c[k]);
  }
}

void sub5_2(double _Complex a[], double _Complex b[], double _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-(b[k]+c[k]);
  }
}

void sub6(float _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-a[k];
  }
}

void sub6_2(double _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]-a[k];
  }
}

void sub7(float _Complex a[] ,float _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*b[k];
  }
}

void sub7_2(double _Complex a[], double _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size-1;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*b[k];
  }
}

void sub8(float _Complex a[], float _Complex b[], float _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*(b[k]+c[k]);
  }
}

void sub8_2(double _Complex a[], double _Complex b[], double _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*(b[k]+c[k]);
  }
}

void sub9(float _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*a[k];
  }
}

void sub9_2(double _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]*a[k];
  }
}

void sub10(float _Complex a[], float _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/b[k];
  }
}

void sub10_2(double _Complex a[], double _Complex b[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/b[k];
  }
}

void sub11(float _Complex a[], float _Complex b[], float _Complex c[], int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/(b[k]+c[k]);
  }
}

void sub11_2(double _Complex a[], double _Complex b[], double _Complex c[],
	     int loop_size)
{
  int i,k;
  k = loop_size -2;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/(b[k]+c[k]);
  }
}

void sub12(float _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/a[k];
  }
}

void sub12_2(double _Complex a[], int loop_size)
{
  int i,k;
  k = loop_size;
  for(i=0; i<loop_size; i++) {
    a[i]=a[i]/a[k];
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
  float  _Complex  a[5],b[5],c[5];
  double _Complex a2[5],b2[5],c2[5];
  int loop_size,i;

  loop_size=5;
  for (i=0; i<loop_size; i++) {
    a[i]  = 0.0f  +  0.0fi;
    b[i]  = (i+1) + (i+2) * I;
    c[i]  = (i+1) + (i+3) * I;
    a2[i]  = 0.0   +  0.0i;
    b2[i] = (i+1) + (i+2) * I;
    c2[i] = (i+1) + (i+3) * I;
  }

  sub1(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 32) {
    printf(" sub1 : OK\n");
  }else{
    printf(" sub1 : NG %d != 32\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub1_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 32) {
    printf(" sub1_2 : OK\n");
  }else{
    printf(" sub1_2 : NG %d != 32\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub2(a,b,c,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 100) {
    printf(" sub2 : OK\n");
  }else{
    printf(" sub2 : NG %d != 100\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub2_2(a2,b2,c2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 100) {
    printf(" sub2_2 : OK\n");
  }else{
    printf(" sub2_2 : NG %d != 100\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub3(a,loop_size-1);
  if((int)(cabsf(csumf(a,loop_size))) == 180) {
    printf(" sub3 : OK\n");
  }else{
    printf(" sub3 : NG %d != 180\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub3_2(a2,loop_size-1);
  if((int)(cabs(csum(a2,loop_size))) == 180) {
    printf(" sub3_2 : OK\n");
  }else{
    printf(" sub3_2 : NG %d != 180\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub4(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 148) {
    printf(" sub4 : OK\n");
  }else{
    printf(" sub4 : NG %d != 148\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub4_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 148) {
    printf(" sub4_2 : OK\n");
  }else{
    printf(" sub4_2 : NG %d != 148\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub5(b,c,a,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 148) {
    printf(" sub5 : OK\n");
  }else{
    printf(" sub5 : NG %d != 148\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub5_2(b2,c2,a2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 148) {
    printf(" sub5_2 : OK\n");
  }else{
    printf(" sub5_2 : NG %d != 148\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub6(a,loop_size-1);
  if((int)(cabsf(csumf(a,loop_size))) == 93) {
    printf(" sub6 : OK\n");
  }else{
    printf(" sub6 : NG %d != 93\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub6_2(a2,loop_size-1);
  if((int)(cabs(csum(a2,loop_size))) == 93) {
    printf(" sub6_2 : OK\n");
  }else{
    printf(" sub6_2 : NG %d != 93\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub7(a,b,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 3220) {
    printf(" sub7 : OK\n");
  }else{
    printf(" sub7 : NG %d != 3220\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub7_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 3090) {
    printf(" sub7_2 : OK\n");
  }else{
    printf(" sub7_2 : NG %d != 3090\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub8(a,b,c,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 87613) {
    printf(" sub8 : OK\n");
  }else{
    printf(" sub8 : NG %d != 87613\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub8_2(a2,b2,c2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 84063) {
    printf(" sub8_2 : OK\n");
  }else{
    printf(" sub8_2 : NG %d != 84063\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub9(a,loop_size-1);
  if((int)(cabsf(csumf(a,loop_size))) <= 953353088 &&
     (int)(cabsf(csumf(a,loop_size))) >= 953353024) {
    printf(" sub9 : OK\n");
  }else{
    printf(" sub9 : NG %d != 953353088\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub9_2(a2,loop_size-1);
  if((int)(cabs(csum(a2,loop_size))) == 877664073) {
    printf(" sub9_2 : OK\n");
  }else{
    printf(" sub9_2 : NG %d != 877664073\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub10(a,b,loop_size);
  if(((int)(cabsf(csumf(a,loop_size))) >= 27706250) &&
     ((int)(cabsf(csumf(a,loop_size))) <= 27706272)) {
    printf(" sub10 : OK\n");
  }else{
    printf(" sub10 : NG %d != 27706260\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub10_2(a2,b2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 25506594) {
    printf(" sub10_2 : OK\n");
  }else{
    printf(" sub10_2 : NG %d != 25506594\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub11(a,b,c,loop_size);
  if((int)(cabsf(csumf(a,loop_size))) == 1018502) {
    printf(" sub11 : OK\n");
  }else{
    printf(" sub11 : NG %d != 1018502\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub11_2(a2,b2,c2,loop_size);
  if((int)(cabs(csum(a2,loop_size))) == 937641) {
    printf(" sub11_2 : OK\n");
  }else{
    printf(" sub11_2 : NG %d != 937641\n",(int)(cabs(csum(a2,loop_size))));
  }

  sub12(a,loop_size-1);
  if((int)(cabsf(csumf(a,loop_size))) == 74878) {
    printf(" sub12 : OK\n");
  }else{
    printf(" sub12 : NG %d != 74878\n",(int)(cabsf(csumf(a,loop_size))));
  }

  sub12_2(a2,loop_size-1);
  if((int)(cabs(csum(a2,loop_size))) == 71844) {
    printf(" sub12_2 : OK\n");
  }else{
    printf(" sub12_2 : NG %d != 71844\n",(int)(cabs(csum(a2,loop_size))));
  }
}
