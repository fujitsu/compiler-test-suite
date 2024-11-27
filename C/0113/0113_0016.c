#include <stdio.h>


#define N 10
#define M  3
#define ANS  2278
static void init_data();
static int sum_of_data();

int a_dim1[N];
int a_dim2[N][N];
int a_dim7[M][M][M][M][M][M][M];
int main()
{
  int d1,d2,d3;
  int i1,i2,i3,i4,i5,i6,i7;
  int res;

  init_data();

  d1 = 0;
  d2 = 1;
  d3 = 2;

  a_dim1[1] = a_dim1[1] + 0;
  a_dim1[1] = a_dim1[1] + 1;
  a_dim1[1] = a_dim1[1] - 0;
  a_dim1[1] = a_dim1[1] - 1;
  a_dim1[d1] = a_dim1[d1] + 0;
  a_dim1[d1] = a_dim1[d1] - 1;
  a_dim1[d1] = a_dim1[d1] - 0;
  a_dim1[d1] = a_dim1[d1] + 1;
  a_dim2[0][0] = a_dim2[0][0] + 0;
  a_dim2[0][0] = a_dim2[0][0] + 1;
  a_dim2[0][0] = a_dim2[0][0] - 0;
  a_dim2[0][0] = a_dim2[0][0] - 1;
  a_dim2[d1][d2] = a_dim2[d1][d2] + 0;
  a_dim2[d1][d2] = a_dim2[d1][d2] + 1;
  a_dim2[d1][d2] = a_dim2[d1][d2] - 0;
  a_dim2[d1][d2] = a_dim2[d1][d2] - 1;
  a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] + 0;
  a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] + 1;
  a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] - 0;
  a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] - 1;
  a_dim7[d1][d2][d3][d1][d2][d3][d1] = a_dim7[d1][d2][d3][d1][d2][d3][d1] + 0;
  a_dim7[d1][d2][d3][d1][d2][d3][d1] = a_dim7[d1][d2][d3][d1][d2][d3][d1] + 1;
  a_dim7[d1][d2][d3][d1][d2][d3][d1] = a_dim7[d1][d2][d3][d1][d2][d3][d1] - 0;
  a_dim7[d1][d2][d3][d1][d2][d3][d1] = a_dim7[d1][d2][d3][d1][d2][d3][d1] - 1;

  for (i1=0; i1<M; i1++) {
    a_dim1[1] = a_dim1[1] + 0;
    a_dim1[1] = a_dim1[1] + 1;
    a_dim1[1] = a_dim1[1] - 0;
    a_dim1[1] = a_dim1[1] - 1;
    a_dim1[i1] = a_dim1[i1] + 0;
    a_dim1[i1] = a_dim1[i1] - 1;
    a_dim1[i1] = a_dim1[i1] - 0;
    a_dim1[i1] = a_dim1[i1] + 1;
    a_dim1[i1*d1] = a_dim1[i1*d1] + 0;
    a_dim1[i1*d2] = a_dim1[i1*d2] - 0;
    a_dim1[i1+d3] = a_dim1[i1+d3] + 0;
    for (i2=0; i2<M; i2++) {
      a_dim2[1][1] = a_dim2[1][1] + 0;
      a_dim2[0][0] = a_dim2[0][0] + 1;
      a_dim2[1][1] = a_dim2[1][1] - 0;
      a_dim2[0][0] = a_dim2[0][0] - 1;
      a_dim2[1][1] = a_dim2[1][1] + a_dim2[1][1] + 0;
      a_dim2[0][0] = a_dim2[0][0] + a_dim2[0][0] + 1;
      a_dim2[1][1] = a_dim2[1][1] - a_dim2[1][1] - 0;
      a_dim2[0][0] = a_dim2[0][0] - a_dim2[0][0] - 1;
      a_dim2[i1][i2] = a_dim2[i1][i2] + 0;
      a_dim2[i1][i2] = a_dim2[i1][i2] + 1;
      a_dim2[i1][i2] = a_dim2[i1][i2] - 0;
      a_dim2[i1][i2] = a_dim2[i1][i2] - 1;
      a_dim2[i1][i2] = a_dim2[i1][i2] + a_dim2[i1][i2] + 0;
      a_dim2[i1][i2] = a_dim2[i1][i2] - a_dim2[i1][i2] - 0;
      a_dim2[i1*d2][i2] = a_dim2[i1*d1][i2] + 0;
      a_dim2[i1][i2+d2] = a_dim2[i1][i2+d2] + 0;
      a_dim2[i1+d2][i2*d3] = a_dim2[i1+d2][i2*d3] - 0;
      a_dim2[i1*d2][d3*i2] = a_dim2[i1*d2][d3*i2] - 0;
      a_dim2[i1*d2][i2] = a_dim2[i1*d1][i2] + a_dim2[i1*d1][i2] + 0;
      a_dim2[i1*d2][i2+d2] = a_dim2[i1*d2][i2+d2] - a_dim2[i1*d2][i2+d2] + 0;
    }
  }

  for (i1=0; i1<M; i1++) {
    for (i2=0; i2<M; i2++) {
      for (i3=0; i3<M; i3++) {
	for (i4=0; i4<M; i4++) {
	  for (i5=0; i5<M; i5++) {
	    for (i6=0; i6<M; i6++) {
	      for (i7=0; i7<M; i7++) {
		a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] + 0;
		a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] + 1;
		a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] - 0;
		a_dim7[0][1][2][0][1][2][0] = a_dim7[0][1][2][0][1][2][0] - 1;
		a_dim7[i1][i2][i3][i4][i5][i6][i7] = a_dim7[i1][i2][i3][i4][i5][i6][i7] + 0;
		a_dim7[i1][i2][i3][i4][i5][i6][i7] = a_dim7[i1][i2][i3][i4][i5][i6][i7] + 1;
		a_dim7[i1][i2][i3][i4][i5][i6][i7] = a_dim7[i1][i2][i3][i4][i5][i6][i7] - 0;
		a_dim7[i1][i2][i3][i4][i5][i6][i7] = a_dim7[i1][i2][i3][i4][i5][i6][i7] - 1;
		a_dim7[d2*i1][i2][i3][i4+d1][i5][i6][d2*i7]    
		  = a_dim7[d2*i1][i2][i3][i4+d1][i5][i6][d2*i7] + 0;
		a_dim7[i1][d2*i2][i3+d1][i4][i5+d1][d2*i6][i7]
		  = a_dim7[i1][d2*i2][i3+d1][i4][i5+d1][d2*i6][i7] + 1;
		a_dim7[i1][i2+d1][d2*i3][i4][d2*i5][i6+d1][i7]
		  = a_dim7[i1][i2+d1][d2*i3][i4][d2*i5][i6+d1][i7] - 0;
		a_dim7[i1+d1][i2][i3][d2*i4][i5][i6][i7+d1]
		  = a_dim7[i1+d1][i2][i3][d2*i4][i5][i6][i7+d1] - 1;
	      }
	    }
	  }
	}
      }
    }
  }

  res = sum_of_data();



  if (res == ANS) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

static void init_data()
{
  int i1,i2,i3,i4,i5,i6,i7;

  for (i1=0; i1<N; i1++) {
    a_dim1[i1] = i1%M;
    for (i2=0; i2<N; i2++) {
      a_dim2[i1][i2] = (i1+i2)%M;
    }
  }
  for (i1=0; i1<M; i1++) {
    for (i2=0; i2<M; i2++) {
      for (i3=0; i3<M; i3++) {
	for (i4=0; i4<M; i4++) {
	  for (i5=0; i5<M; i5++) {
	    for (i6=0; i6<M; i6++) {
	      for (i7=0; i7<M; i7++) {
		a_dim7[i1][i2][i3][i4][i5][i6][i7] = (i1+i2+i3+i4+i5+i6+i7)%M;
	      }
	    }
	  }
	}
      }
    }
  }
}

static int sum_of_data()
{
  int i1,i2,i3,i4,i5,i6,i7;
  int sum1,sum2,sum3;
  int res;

  sum1 = sum2 = sum3 = 0;

  for (i1=0; i1<N; i1++) {
    sum1 = sum1 + a_dim1[i1];
    for (i2=0; i2<N; i2++) {
      sum2 = sum2 + a_dim2[i1][i2];
    }
  }

  for (i1=0; i1<M; i1++) {
    for (i2=0; i2<M; i2++) {
      for (i3=0; i3<M; i3++) {
	for (i4=0; i4<M; i4++) {
	  for (i5=0; i5<M; i5++) {
	    for (i6=0; i6<M; i6++) {
	      for (i7=0; i7<M; i7++) {
		sum3 = sum3 + a_dim7[i1][i2][i3][i4][i5][i6][i7];
	      }
	    }
	  }
	}
      }
    }
  }

  res = sum1 + sum2 + sum3;

  return(res);
}
