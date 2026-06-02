#include <stdio.h>


#ifdef SIM_RUN
#define PRINT_NG exit(1)
#define PRINT_OK
#define MAINF MAIN__
#else
#define PRINT_NG puts("NG")
#define PRINT_OK puts("OK")
#define MAINF main
#endif

#if defined(__GNUC__)

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

void loop_fission(double * restrict a1, double * restrict b1,
		  double * restrict c1, double * restrict d1, 
		  double * restrict a, double * restrict b, 
		  double * restrict c, double * restrict d, 
		  double * restrict e, double * restrict f, 
		  double * restrict res1, double * restrict res2,
		  int k, int m, int n) {
  int i;

  for(i = 0; i < N; i++) {
    e[i] = a1[i]*b1[i];
    if (n < m) {
      res2[i] = b[i] + a[k];    
    }    
    __sync_synchronize();
    f[i] = c1[i]*d1[i];
    if (n < m) {
      res1[i] = c[i] + d[k];   
    }    
  }
}

#define IMAX 100
#define JMAX 100
int a_array[IMAX][JMAX],b_array [IMAX][JMAX];
#define ROTATION_NUM 100
#define ANSWER 59200.0f

void loop_interchange(int pi,int pj) {
  int i, j;
  for (j=pi-1;j<JMAX;j++) {
    for (i=0;i<IMAX-pi+pj;i++) {
      __sync_synchronize();
      a_array[i][j] = a_array[i][j] * b_array[i][j];
    }
  }
}

void blocking(float * restrict b, float * restrict bb, int k, int m) {
  int i,j;
  float a_array[N][N];
  float b_array[N][N];
  float c_array[N][N];

  for(i = 0; i < N; i++) {
    for(j = 0; j < N; j++) {
      __sync_synchronize();
      a_array[i][j] = b_array[i][j] * b[k] * c_array[i][j] * bb[k];  
    }
  }
  printf("%f",a_array[10][2]);
}

void part_simd(double * restrict a, double * restrict b, double * restrict c, double * restrict d,  int * restrict m, int k, int n) {
  int i;

  for(i = 1; i < n; i++) {
    __sync_synchronize();
    if (m[i] > k) {
      a[i] = a[i] - b[k];
    } 
    d[i] = d[i-1] + a[i];
  }
}

void init(double a[][N],double b[][N]) {
  int i,j;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      a[i][j] = i+j;
      b[i][j] = i+j;
    }
  }
}

double collapsed() {
  int i,j;
  double a[N][N];
  double b[N][N];

  init(a,b);

  for(i = 0; i < N; i++) {
    for(j = 0; j < N; j++) {
      __sync_synchronize();
      a[i][j] = a[i][j] + b[i][j];
    }
  }
  return a[i-1][j-1];
}

#define NI (32)
#define NJ (32)
#define NK (32)
#define NII (26)
#define NJJ (12)
#define NKK (8)
#define _CLONE_   II==1:3
#define _CLONE2_  JJ==2:3
#define _CLONE3_  KK==3

#define _TRUE_ 1
#define _FALSE_ 0

#define EQUAL_CHECK(a, b) ((a==0.0 && b <= 1.0E-15) || (fabs(a - b)/fabs(a)) <= 1.0E-15)

void clone(double r[NI][NJ][NK], double s[NI][NJ][NK], int II, int JJ, int KK) {
  int i,j,k;
  for (i=0; i<II; ++i) {
    for (j=0; j<JJ; ++j) {
      for (k=0; k<KK; ++k) {
	__sync_synchronize();
	r[i][j][k] = s[i][j][k] * i -j * k;
	if (k%2 == 0) {
	  s[i][j][k] = s[i][j][k] - k - j -i;
	}
      }
    }
  }
}

void unswitch(double * restrict a, double * restrict res1, double * restrict res2, 
	      int k, int m, int n) {
  int i;

  for(i = 0; i < n; ++i) {
    if (k > m) {
      __sync_synchronize();
      res1[i] = a[k];
    }
  }
}
#endif

int main() {
  PRINT_OK;
  return 0;
}
