#include <stdio.h>
#include <complex.h>

void array_add4 (float _Complex a[], float _Complex b[], float _Complex c[])
{
  a[4] = b[4] + c[4];
  return;
}

void array_add8(double _Complex a[], double _Complex b[], double _Complex c[])
{
  a[4] = b[4] + c[4];
  return;
}

void array_sub4(float _Complex a[], float _Complex b[], float _Complex c[])
{
  a[4] = b[4] - c[4];
  return;
}

void array_sub8(double _Complex a[], double _Complex b[], double _Complex c[])
{
  a[4] = b[4] - c[4];
  return;
}

void array_mul4(float _Complex a[], float _Complex b[], float _Complex z)
{
  a[4] = b[4] * z;
  return;
}

void array_mul8(double _Complex a[], double _Complex b[], double _Complex z)
{
  a[4] = b[4] * z;
  return;
}

void array_div4(float _Complex a[], float _Complex b[], float _Complex z)
{
  a[4] = b[4] / z;
  return;
}

void array_div8(double _Complex a[], double _Complex b[], double _Complex z)
{
  a[4] = b[4] / z;
  return;
}

void array_loop_add4(float _Complex a[], float _Complex b[], float _Complex c[], 
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i];
  }
  return;
}

void array_loop_add8(double _Complex a[], double _Complex b[], double _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + c[i];
  }
  return;
}

void array_loop_sub4(float _Complex a[], float _Complex b[], float _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] - c[i];
  }
  return;
}

void array_loop_sub8(double _Complex a[], double _Complex b[], double _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] - c[i];
  }
  return;
}

void array_loop_mul4(float _Complex a[], float _Complex b[], float _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * c[i];
  }
  return;
}

void array_loop_mul8(double _Complex a[], double _Complex b[], double _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * c[i];
  }
  return;
}

void array_loop_div4(float _Complex a[], float _Complex b[], float _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] / c[i];
  }
  return;
}

void array_loop_div8(double _Complex a[], double _Complex b[], double _Complex c[],
		     int loop_size)
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] / c[i];
  }
  return;
}

void array_add_real_loop(float _Complex a[], float _Complex b[], int loop_size)
{
  int i; 
  float r4;

  r4=10.0f;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] + r4;
  }
  return;
}

void array_sub_real_loop(float _Complex a[], float _Complex b[], int loop_size)
{
  int i;
  float r4;

  r4=10.0f;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] - r4;
  }
  return;
}

void array_mul_real_loop(double _Complex a[], double _Complex b[], int loop_size)
{
  int i;
  double r4;
  
  r4=10.0;
  for (i=0; i<loop_size; i++) {
    a[i] = b[i] * r4;
  }
  return;
}

void array_div_real_loop(double _Complex a[], double _Complex b[], int loop_size)
{
  int i;
  double r4;
  
  r4=10.0;
  for (i=0; i < loop_size; i++) {
    a[i] = b[i] / r4;
  }
  return;
}

void multi_calc1(float _Complex a[], float _Complex b[], int loop_size) 
{
  float _Complex d[5];
  int i;
  
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] + (i+1);
    a[i] = d[i] * (i+1);
  }
}

void multi_calc1_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  double _Complex d[5];
  int i;

  for (i=0; i<loop_size; i++) {
    d[i] = b[i] + (i+1);
    a[i] = d[i] * (i+1);
  }
  return;
}

void multi_calc2(float _Complex a[], float _Complex b[], int loop_size) 
{
  float _Complex d[5];
  int i;
  
  for (i=0; i<loop_size; i++) {
    d[i] = b[i] - (i+1);
    a[i] = d[i] / (i+1);
  }
  return;
}

void multi_calc2_2(double _Complex a[], double _Complex b[], int loop_size) 
{
  double _Complex d[5];
  int i;

  for (i=0; i<loop_size; i++) {
    d[i] = b[i] - (i+1);
    a[i] = d[i] * (i+1);
  }
  return;
}

void array_conjg1(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]+conjf(b[i]+c[i]);
  }
  return;
}

void array_conjg1_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]+conj(b[i]+c[i]);
  }
  return;
}

void array_conjg2(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conjf(b[i]+c[i])+e[i];
  }
  return;
}

void array_conjg2_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conj(b[i]+c[i])+e[i];
  }
  return;
}

void array_conjg3(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]-conjf(b[i]+c[i]);
  }
  return;
}

void array_conjg3_2(double _Complex a[], double _Complex b[], double _Complex c[], 
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]-conj(b[i]+c[i]);
  }
  return;
}

void array_conjg4(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conjf(b[i]+c[i])-e[i];
  }
  return;
}

void array_conjg4_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conj(b[i]+c[i])-e[i];
  }
  return;
}

void array_conjg5(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]*conjf(b[i]+c[i]);
  }
  return;
}

void array_conjg5_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]*conj(b[i]+c[i]);
  }
  return;
}

void array_conjg6(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conjf(b[i]+c[i])*e[i];
  }
  return;
}

void array_conjg6_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conj(b[i]+c[i])*e[i];
  }
  return;
}

void array_conjg7(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]/conjf(b[i]+c[i]);
  }
  return;
}

void array_conjg7_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=e[i]/conj(b[i]+c[i]);
  }
  return;
}

void array_conjg8(float _Complex a[], float _Complex b[], float _Complex c[],
		  float _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conjf(b[i]+c[i])/e[i];
  }
  return;
}

void array_conjg8_2(double _Complex a[], double _Complex b[], double _Complex c[],
		    double _Complex e[], int loop_size) 
{
  int i;
  for (i=0; i<loop_size; i++) {
    a[i]=conj(b[i]+c[i])/e[i];
  }
  return;
}

void multi_array1(float _Complex a[][5][5][5][5], float _Complex b[][5][5][5][5],
		  float _Complex c[][5][5][5][5], float _Complex d[][5][5][5][5],
		  float _Complex e[][5][5][5][5], int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3][i4][i5] + c[i1][i2][i3][i4][i5]
	      - d[i1][i2][i3][i4][i5] * e[i1][i2][i3][i4][i5];
	  }
	}
      }
    }
  }
  return;
}

void multi_array1_2(double _Complex a[][5][5][5][5], double _Complex b[][5][5][5][5],
		    double _Complex c[][5][5][5][5], double _Complex d[][5][5][5][5],
		    double _Complex e[][5][5][5][5], int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3][i4][i5] + c[i1][i2][i3][i4][i5]
	      - d[i1][i2][i3][i4][i5] * e[i1][i2][i3][i4][i5];
	  }
	}
      }
    }
  }
  return;
}

void multi_array2(float _Complex a[][5][5][5][5], float _Complex b[][5][5],
		  float _Complex c[][5], float _Complex d[][5][5][5],
		  float _Complex e[][5][5][5][5], int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3] + c[i1][i2] - d[i1][i2][i3][i4]
	      * e[i1][i2][i3][i4][i5];
	  }
	}
      }
    }
  }
  return;
}

void multi_array2_2(double _Complex a[][5][5][5][5], double _Complex b[][5][5],
		    double _Complex c[][5], double _Complex d[][5][5][5],
		    double _Complex e[][5][5][5][5], int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3] + c[i1][i2] - d[i1][i2][i3][i4]
	      * e[i1][i2][i3][i4][i5];
	  }
	}
      }
    }
  }
  return;
}

void multi_array3(float _Complex a[][5][5][5][5], float _Complex b[][5][5][5][5],
		  float _Complex c[][5], float _Complex d[][5][5],
		  float _Complex e[][5][5][5][5], float _Complex f[][5][5][5][5],
		  int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3][i4][i5] * c[i1][i2] + 
	      d[i1][i2][i3] * (e[i1][i2][i3][i4][i5] - f[i1][i2][i3][i4][i5]);
	  }
	}
      }
    }
  }
  return;
}

void multi_array3_2(double _Complex a[][5][5][5][5], double _Complex b[][5][5][5][5],
		    double _Complex c[][5], double _Complex d[][5][5],
		    double _Complex e[][5][5][5][5], double _Complex f[][5][5][5][5],
		    int loop_size)
{
  int i1,i2,i3,i4,i5;
  for (i1=0; i1<loop_size; i1++) {
    for (i2=0; i2<loop_size; i2++) {
      for (i3=0; i3<loop_size; i3++) {
	for (i4=0; i4<loop_size; i4++) {
	  for (i5=0; i5<loop_size; i5++) {
	    a[i1][i2][i3][i4][i5] = b[i1][i2][i3][i4][i5] * c[i1][i2] + 
	      d[i1][i2][i3] * (e[i1][i2][i3][i4][i5] - f[i1][i2][i3][i4][i5]);
	  }
	}
      }
    }
  }
  return;
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
  float _Complex z;
  double _Complex z2;
  int loop_size,i,j,k,l,m;
  float  _Complex a[5],b[5],c[5],e[5];
  double _Complex a2[5],b2[5],c2[5],e2[5];
  float  _Complex aa[5][5][5][5][5],bb[5][5][5][5][5],cc[5][5][5][5][5],dd[5][5][5][5][5],ee[5][5][5][5][5];
  double _Complex aa2[5][5][5][5][5],bb2[5][5][5][5][5],cc2[5][5][5][5][5],dd2[5][5][5][5][5],ee2[5][5][5][5][5];
  float  _Complex ff[5][5];
  double _Complex ff2[5][5];
  float  _Complex gg[5][5][5];
  double _Complex gg2[5][5][5];
  float _Complex hh[5][5][5][5];
  double _Complex hh2[5][5][5][5];

  loop_size=5;
  for (i=0; i<loop_size; i++){
    a[i] = 0;
    b[i] = (i+1) + (i+2) * I;
    c[i] = (i+1) + (i+3) * I;
  }

  for (i=0; i<loop_size; i++){
    a2[i] = 0;
    b2[i] = ((i+1)*(i+1)) + ((i+1)*(i+1)-1) * I;
    c2[i] = ((i+1)*(i+1)) + ((i+1)*(i+1)+1) * I;
  }

  for (i=0; i<loop_size; i++){
    e[i]  = (i+2) + (i+1) * I;
    e2[i] = (i+3) + (i+1) * I;
  }

  for (i=0; i<loop_size; i++){
    for (j=0; j<loop_size; j++){
      for (k=0; k<loop_size; k++){
	for (l=0; l<loop_size; l++){
	  for (m=0; m<loop_size; m++){
	    ee[i][j][k][l][m] = (i+3) + (i+1) * I;
	    dd[i][j][k][l][m] = (i+3) + (i+1) * I;
	    cc[i][j][k][l][m] = (i+3) + (i+1) * I;
	    bb[i][j][k][l][m] = (i+3) + (i+1) * I;
	    ee2[i][j][k][l][m] = (i+3) + (i+1) * I;
	    dd2[i][j][k][l][m] = (i+3) + (i+1) * I;
	    cc2[i][j][k][l][m] = (i+3) + (i+1) * I;
	    bb2[i][j][k][l][m] = (i+3) + (i+1) * I;
	  }
	}
      }
    }
  }

  for (i=0; i<loop_size; i++){
    for (j=0; j<loop_size; j++){
    ff[i][j]  = (i+2) + (i+1) * I;
    ff2[i][j] = (i+2) + (i+1) * I;
    }
  }

  for (i=0; i<loop_size; i++){
    for (j=0; j<loop_size; j++){
      for (k=0; k<loop_size; k++){
	gg[i][j][k] = (i+2) + (i+1) * I;
	gg2[i][j][k]= (i+2) + (i+1) * I;
      }
    }
  }
  
  for (i=0; i<loop_size; i++){
    for (j=0; j<loop_size; j++){
      for (k=0; k<loop_size; k++){
	for (l=0; l<loop_size; l++){
	hh[i][j][k][l] = (i+2) + (i+1) * I;
	hh2[i][j][k][l]= (i+2) + (i+1) * I;
	}
      }
    }
  }

  z  = 2.0f + 1.0fi;
  z2 = 2.0  + 1.0i;

  array_add4(a,b,c);
  if((int)cabsf(csumf(a,loop_size)) == 16) {
    printf(" array_add4 : OK\n");
  } else {
    printf(" array_add4 : NG  ans(%d) != 16\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_add8(a2,b2,c2);
  if((int)cabs(csum(a2,loop_size)) == 70) {
    printf(" array_add8 : OK\n");
  } else {
    printf(" array_add8 : NG  ans(%d) != 70\n",(int)cabs(csum(a2,loop_size)));
  }

  array_sub4(a,b,c);
  if((int)cabsf(csumf(a,loop_size)) == 1) {
    printf(" array_sub4 : OK\n");
  } else {
    printf(" array_sub4 : NG  ans(%d) != 1\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_sub8(a2,b2,c2);
  if((creal(a2[4]) == 0.0) && (cimag(a2[4]) == -2.0)) {
    printf(" array_sub8 : OK\n");
  } else {
    printf(" array_sub8 : NG  a2(%f,%f)\n",creal(a2[4]),cimag(a2[4]));
  }

  array_mul4(a,b,z);
  if((int)cabsf(csumf(a,loop_size)) == 17) {
    printf(" array_mul4 : OK\n");
  } else {
    printf(" array_mul4 : NG  ans(%d) != 17\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_mul8(a2,b2,z2);
  if((int)cabs(csum(a2,loop_size)) == 77) {
    printf(" array_mul8 : OK\n");
  } else {
    printf(" array_mul8 : NG  ans(%d) != 77\n",(int)cabs(csum(a2,loop_size)));
  }

  array_div4(a,b,z);
  if((int)cabsf(csumf(a,loop_size)) == 3) {
    printf(" array_div4 : OK\n");
  } else {
    printf(" array_div4 : NG  ans(%d) != 3\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_div8(a2,b2,z2);
  if((int)cabs(csum(a2,loop_size)) == 15) {
    printf(" array_div8 : OK\n");
  } else {
    printf(" array_div8 : NG  ans(%d) != 15\n",(int)cabs(csum(a2,loop_size)));
  }

  array_loop_add4(a,b,c,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 54) {
    printf(" array_loop_add4 : OK\n");
  } else {
    printf(" array_loop_add4 : NG  ans(%d) != 54\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_loop_add8(a2,b2,c2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 155) {
    printf(" array_loop_add8 : OK\n");
  } else {
    printf(" array_loop_add8 : NG  ans(%d) != 155\n",(int)cabs(csum(a2,loop_size)));
  }

  array_loop_sub4(a,b,c,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 5) {
    printf(" array_loop_sub4 : OK\n");
  } else {
    printf(" array_loop_sub4 : NG  ans(%d) != 5\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_loop_sub8(a2,b2,c2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 10) {
    printf(" array_loop_sub8 : OK\n");
  } else {
    printf(" array_loop_sub8 : NG  ans(%d) != 10\n",(int)cabs(csum(a2,loop_size)));
  }

  array_loop_mul4(a,b,c,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 164) {
    printf(" array_loop_mul4 : OK\n");
  } else {
    printf(" array_loop_mul4 : NG  ans(%d) != 164\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_loop_mul8(a2,b2,c2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 1958) {
    printf(" array_loop_mul8 : OK\n");
  } else {
    printf(" array_loop_mul8 : NG  ans(%d) != 1958\n",(int)cabs(csum(a2,loop_size)));
  }

  array_loop_div4(a,b,c,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 4) {
    printf(" array_loop_div4 : OK\n");
  } else {
    printf(" array_loop_div4 : NG  ans(%d) != 4\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_loop_div8(a2,b2,c2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 3) {
    printf(" array_loop_div8 : OK\n");
  } else {
    printf(" array_loop_div8 : NG  ans(%d) != 3\n",(int)cabs(csum(a2,loop_size)));
  }

  array_add_real_loop(a,b,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 68) {
    printf(" array_add_real_loop : OK\n");
  } else {
    printf(" array_add_real_loop : NG  ans(%d) != 68\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_sub_real_loop(a,b,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 40) {
    printf(" array_sub_real_loop : OK\n");
  } else {
    printf(" array_sub_real_loop : NG  ans(%d) != 40\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_mul_real_loop(a2,b2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 743) {
    printf(" array_mul_real_loop : OK\n");
  } else {
    printf(" array_mul_real_loop : NG  ans(%d) != 743\n",(int)cabs(csum(a2,loop_size)));
  }

  array_div_real_loop(a2,b2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 7) {
    printf(" array_div_real_loop : OK\n");
  } else {
    printf(" array_div_real_loop : NG  ans(%d) != 7\n",(int)cabs(csum(a2,loop_size)));
  }

  multi_calc1(a,b,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 130) {
    printf(" multi_calc1 : OK\n");
  } else {
    printf(" multi_calc1 : NG  ans(%d) != 130\n",(int)cabsf(csumf(a,loop_size)));
  }

  multi_calc1_2(a2,b2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 350) {
    printf(" multi_calc1_2 : OK\n");
  } else {
    printf(" multi_calc1_2 : NG  ans(%d) != 350\n",(int)cabs(csum(a2,loop_size)));
  }

  multi_calc2(a,b,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 7) {
    printf(" multi_calc2 : OK\n");
  } else {
    printf(" multi_calc2 : NG  ans(%d) != 7\n",(int)cabsf(csumf(a,loop_size)));
  }

  multi_calc2_2(a2,b2,loop_size);
  if((creal(a2[4]) == 100.0) && (cimag(a2[4]) == 120.0)) {
    printf(" multi_calc2_2 : OK\n");
  } else {
    printf(" multi_calc2_2 : NG a2[4]=(%f,%f)\n",creal(a2[4]),cimag(a2[4]));
  }

  array_conjg1(a,b,c,e,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 58) {
    printf(" array_conjg1 : OK\n");
  } else {
    printf(" array_conjg1 : NG  ans(%d) != 58\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg1_2(a2,b2,c2,e2,loop_size);
  if((int)cabs(csum(a2,loop_size)) == 165) {
    printf(" array_conjg1_2 : OK\n");
  } else {
    printf(" array_conjg1_2 : NG  ans(%d) != 165\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg2(a,b,c,e,loop_size); 
  if((int)cabsf(csumf(a,loop_size)) == 58) {
    printf(" array_conjg2 : OK\n");
  } else {
    printf(" array_conjg2 : NG  ans(%d) != 58\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg2_2(a2,b2,c2,e2,loop_size) ;
  if((int)cabs(csum(a2,loop_size)) == 165) {
    printf(" array_conjg2_2 : OK\n");
  } else {
    printf(" array_conjg2_2 : NG  ans(%d) != 165\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg3(a,b,c,e,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 60) {
    printf(" array_conjg3 : OK\n");
  } else {
    printf(" array_conjg3 : NG  ans(%d) != 60\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg3_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 151) {
    printf(" array_conjg3_2 : OK\n");
  } else {
    printf(" array_conjg3_2 : NG  ans(%d) != 151\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg4(a,b,c,e,loop_size); 
  if((int)cabsf(csumf(a,loop_size)) == 60) {
    printf(" array_conjg4 : OK\n");
  } else {
    printf(" array_conjg4 : NG  ans(%d) != 60\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg4_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 151) {
    printf(" array_conjg4_2 : OK\n");
  } else {
    printf(" array_conjg4_2 : NG  ans(%d) != 151\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg5(a,b,c,e,loop_size); 
  if((int)cabsf(csumf(a,loop_size)) == 308) {
    printf(" array_conjg5 : OK\n");
  } else {
    printf(" array_conjg5 : NG  ans(%d) != 308\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg5_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 1141) {
    printf(" array_conjg5_2 : OK\n");
  } else {
    printf(" array_conjg5_2 : NG  ans(%d) != 1141\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg6(a,b,c,e,loop_size) ;
  if((int)cabsf(csumf(a,loop_size)) == 308) {
    printf(" array_conjg6 : OK\n");
  } else {
    printf(" array_conjg6 : NG  ans(%d) != 308\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg6_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 1141) {
    printf(" array_conjg6_2 : OK\n");
  } else {
    printf(" array_conjg6_2 : NG  ans(%d) != 1141\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg7(a,b,c,e,loop_size);
  if((int)cabsf(csumf(a,loop_size)) == 2) {
    printf(" array_conjg7 : OK\n");
  } else {
    printf(" array_conjg7 : NG  ans(%d) != 2\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg7_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 2) {
    printf(" array_conjg7_2 : OK\n");
  } else {
    printf(" array_conjg7_2 : NG  ans(%d) != 2\n",(int)cabs(csum(a2,loop_size)));
  }

  array_conjg8(a,b,c,e,loop_size); 
  if((int)cabsf(csumf(a,loop_size)) == 11) {
    printf(" array_conjg8 : OK\n");
  } else {
    printf(" array_conjg8 : NG  ans(%d) != 11\n",(int)cabsf(csumf(a,loop_size)));
  }

  array_conjg8_2(a2,b2,c2,e2,loop_size); 
  if((int)cabs(csum(a2,loop_size)) == 22) {
    printf(" array_conjg8_2 : OK\n");
  } else {
    printf(" array_conjg8_2 : NG  ans(%d) != 22\n",(int)cabs(csum(a2,loop_size)));
  }

  multi_array1(aa,bb,cc,dd,ee,loop_size);
  if((crealf(aa[4][4][4][4][4]) == -10.0) && (cimagf(aa[4][4][4][4][4]) == -60.0)) {
    printf(" multi_array1 : OK\n");
  } else {
    printf(" multi_array1 : NG  aa[4][4][4][4][4]=(%f,%f)\n",
	   crealf(aa[4][4][4][4][4]),cimagf(aa[4][4][4][4][4]));
  }

  multi_array1_2(aa2,bb2,cc2,dd2,ee2,loop_size);
  if((creal(aa2[4][4][4][4][4]) == -10.0) && (cimag(aa2[4][4][4][4][4]) == -60.0)) {
    printf(" multi_array1_2 : OK\n");
  } else {
    printf(" multi_array1_2 : NG  aa2[4][4][4][4][4]=(%f,%f)\n",
	   creal(aa2[4][4][4][4][4]),cimag(aa2[4][4][4][4][4]));
  }

  multi_array2(aa,gg,ff,hh,bb,loop_size);
  if((crealf(aa[4][4][4][4][4]) == -5.0) && (cimagf(aa[4][4][4][4][4]) == -55.0)) {
    printf(" multi_array2 : OK\n");
  } else {
    printf(" multi_array2 : NG  aa[4][4][4][4][4]=(%f,%f)\n",
	   crealf(aa[4][4][4][4][4]),cimagf(aa[4][4][4][4][4]));
  }

  multi_array2_2(aa2,gg2,ff2,hh2,bb2,loop_size);
  if((creal(aa2[4][4][4][4][4]) == -5.0) && (cimag(aa2[4][4][4][4][4]) == -55.0)) {
    printf(" multi_array2_2 : OK\n");
  } else {
    printf(" multi_array2_2 : NG  aa2[4][4][4][4][4]=(%f,%f)\n",
	   creal(aa2[4][4][4][4][4]),cimag(aa2[4][4][4][4][4]));
  }

  multi_array3(aa,bb,ff,gg,cc,dd,loop_size);
  if((crealf(aa[4][4][4][4][4]) == 17.0) && (cimagf(aa[4][4][4][4][4]) == 65.0)) {
    printf(" multi_array3 : OK\n");
  } else {
    printf(" multi_array3 : NG  aa[4][4][4][4][4]=(%f,%f)\n",
	   crealf(aa[4][4][4][4][4]),cimagf(aa[4][4][4][4][4]));
  }

  multi_array3_2(aa2,bb2,ff2,gg2,cc2,dd2,loop_size);
  if((creal(aa2[4][4][4][4][4]) == 17.0) && (cimag(aa2[4][4][4][4][4]) == 65.0)) {
    printf(" multi_array3_2 : OK\n");
  } else {
    printf(" multi_array3_2 : NG  aa2[4][4][4][4][4]=(%f,%f)\n",
	   creal(aa2[4][4][4][4][4]),cimag(aa2[4][4][4][4][4]));
  }
}


