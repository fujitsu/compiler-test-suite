#include <stdio.h>


#define ANS 4724
#define N 10
#define M  3

static void init_data();
static int sum_of_data();
static int  ary_index();

float  r4d, r4a1[N], r4a2[N][N], r4a3[N][N][N];
double r8d, r8a1[N], r8a2[N][N], r8a3[N][N][N];
long double r16d, r16a1[N], r16a2[N][N], r16a3[N][N][N];
int main()
{
  int i,j,k;
  int vd1,vd2,vd3,vd0;
  int va1[M],va2[M],va3[M];
  int res;


  init_data();
  vd0 = 0;
  vd1 = 1;
  vd2 = vd1+1;
  vd3 = vd2+1;;
  for (i=0; i<M; i++) {
    va1[i] = i;
    va2[i] = ((N-i+1)>=N)?N-1:(N-i+1);
    va3[i] = i%2;
  }

  
  r4d = r4d + 0.0F;
  r8d = r8d + 0.0;
  r16d = r16d + 0.0L;
  r4d = r4d - 0.0F;
  r8d = r8d - 0.0;
  r16d = r16d - 0.0L;
  
  
  r4a1[1] = r4a1[1] + 0.0F;
  r8a1[1] = r8a1[1] + 0.0;
  r16a1[1] = r16a1[1] + 0.0L;
  r4a1[1] = r4a1[1] + 1.0F;
  r8a1[1] = r8a1[1] + 1.0;
  r16a1[1] = r16a1[1] + 1.0L;
  r4a1[1] = r4a1[1] - 0.0F;
  r8a1[1] = r8a1[1] - 0.0;
  r16a1[1] = r16a1[1] - 0.0L;
  r4a1[1] = r4a1[1] - 1.0F;
  r8a1[1] = r8a1[1] - 1.0;
  r16a1[1] = r16a1[1] - 1.0L;

  r4a1[vd1] = r4a1[vd1] + 0.0F;
  r8a1[vd2] = r8a1[vd2] + 0.0;
  r16a1[vd3] = r16a1[vd3] + 0.0L;
  r4a1[vd1] = r4a1[vd1] + 1.0F;
  r8a1[vd2] = r8a1[vd2] + 1.0;
  r16a1[vd3] = r16a1[vd3] + 1.0L;
  r4a1[vd1] = r4a1[vd1] - 0.0F;
  r8a1[vd2] = r8a1[vd2] - 0.0;
  r16a1[vd3] = r16a1[vd3] - 0.0L;
  r4a1[vd1] = r4a1[vd1] - 1.0F;
  r8a1[vd2] = r8a1[vd2] - 1.0;
  r16a1[vd3] = r16a1[vd3] - 1.0L;

  r4a1[va1[1]] = r4a1[va1[1]] + 0.0F;
  r8a1[va2[1]] = r8a1[va2[1]] + 0.0;
  r16a1[va3[1]] = r16a1[va3[1]] + 0.0L;
  r4a1[va1[2]] = r4a1[va1[2]] + 1.0F;
  r8a1[va2[2]] = r8a1[va2[2]] + 1.0;
  r16a1[va3[2]] = r16a1[va3[2]] + 1.0L;
  r4a1[va1[1]] = r4a1[va1[1]] - 0.0F;
  r8a1[va2[1]] = r8a1[va2[1]] - 0.0;
  r16a1[va3[1]] = r16a1[va3[1]] - 0.0L;
  r4a1[va1[2]] = r4a1[va1[2]] - 1.0F;
  r8a1[va2[2]] = r8a1[va2[2]] - 1.0;
  r16a1[va3[2]] = r16a1[va3[2]] - 1.0L;

  r4a1[ary_index(vd1)] = r4a1[ary_index(vd1)] + 0.0F;
  r8a1[ary_index(vd2)] = r8a1[ary_index(vd2)] + 0.0;
  r16a1[ary_index(vd3)] = r16a1[ary_index(vd3)] + 0.0L;
  r4a1[ary_index(vd3)] = r4a1[ary_index(vd3)] + 1.0F;
  r8a1[ary_index(vd2)] = r8a1[ary_index(vd2)] + 1.0;
  r16a1[ary_index(vd1)] = r16a1[ary_index(vd1)] + 1.0L;
  r4a1[ary_index(vd1)] = r4a1[ary_index(vd1)] - 0.0F;
  r8a1[ary_index(vd2)] = r8a1[ary_index(vd2)] - 0.0;
  r16a1[ary_index(vd3)] = r16a1[ary_index(vd3)] - 0.0L;
  r4a1[ary_index(vd3)] = r4a1[ary_index(vd3)] - 1.0F;
  r8a1[ary_index(vd2)] = r8a1[ary_index(vd2)] - 1.0;
  r16a1[ary_index(vd1)] = r16a1[ary_index(vd1)] - 1.0L;

  for (i=1; i<N; i++) {
    r4a1[2] = r4a1[2] + 0.0F;
    r8a1[2] = r8a1[2] + 0.0;
    r16a1[2] = r16a1[2] + 0.0L;
    r4a1[1] = r4a1[1] + 1.0F;
    r8a1[1] = r8a1[1] + 1.0;
    r16a1[1] = r16a1[1] + 1.0L;
    r4a1[2] = r4a1[2] - 0.0F;
    r8a1[2] = r8a1[2] - 0.0;
    r16a1[2] = r16a1[2] - 0.0L;
    r4a1[1] = r4a1[1] - 1.0F;
    r8a1[1] = r8a1[1] - 1.0;
    r16a1[1] = r16a1[1] - 1.0L;

    r4a1[i] = r4a1[i] + 0.0F;
    r8a1[i] = r8a1[i] + 0.0;
    r16a1[i] = r16a1[i] + 0.0L;
    r4a1[i] = r4a1[i] + 1.0F;
    r8a1[i] = r8a1[i] + 1.0;
    r16a1[i] = r16a1[i] + 1.0L;
    r4a1[i] = r4a1[i] - 0.0F;
    r8a1[i] = r8a1[i] - 0.0;
    r16a1[i] = r16a1[i] - 0.0L;
    r4a1[i] = r4a1[i] - 1.0F;
    r8a1[i] = r8a1[i] - 1.0;
    r16a1[i] = r16a1[i] - 1.0L;

    r4a1[i+vd0] = r4a1[i+vd0] + 0.0F;
    r8a1[vd0+i] = r8a1[vd0+i] + 0.0;
    r16a1[i+vd0] = r16a1[i+vd0] + 0.0L;
    r4a1[i+vd0] = r4a1[i+vd0] + 1.0F;
    r8a1[vd0+i] = r8a1[vd0+i] + 1.0;
    r16a1[i+vd0] = r16a1[i+vd0] + 1.0L;
    r4a1[vd0+i] = r4a1[vd0+i] - 0.0F;
    r8a1[i+vd0] = r8a1[i+vd0] - 0.0;
    r16a1[i-vd0] = r16a1[i-vd0] - 0.0L;
    r4a1[i+vd0] = r4a1[i+vd0] - 1.0F;
    r8a1[vd0+i] = r8a1[vd0+i] - 1.0;
    r16a1[i+vd0] = r16a1[i+vd0] - 1.0L;

    r4a1[va1[i%M]] = r4a1[va1[i%M]] + 0.0F;
    r8a1[va2[i%M]] = r8a1[va2[i%M]] + 0.0;
    r16a1[va3[i%M]] = r16a1[va3[i%M]] + 0.0L;
    r4a1[va1[i%M]] = r4a1[va1[i%M]] + 1.0F;
    r8a1[va2[i%M]] = r8a1[va2[i%M]] + 1.0;
    r16a1[va3[i%M]] = r16a1[va3[i%M]] + 1.0L;
    r4a1[va1[i%M]] = r4a1[va1[i%M]] - 0.0F;
    r8a1[va2[i%M]] = r8a1[va2[i%M]] - 0.0;
    r16a1[va3[i%M]] = r16a1[va3[i%M]] - 0.0L;
    r4a1[va1[i%M]] = r4a1[va1[i%M]] - 1.0F;
    r8a1[va2[i%M]] = r8a1[va2[i%M]] - 1.0;
    r16a1[va3[i%M]] = r16a1[va3[i%M]] - 1.0L;

    r4a1[ary_index(i)] = r4a1[ary_index(i)] + 0.0F;
    r8a1[ary_index(i)] = r8a1[ary_index(i)] + 0.0;
    r16a1[ary_index(i)] = r16a1[ary_index(i)] + 0.0L;
    r4a1[ary_index(i)] = r4a1[ary_index(i)] + 1.0F;
    r8a1[ary_index(i)] = r8a1[ary_index(i)] + 1.0;
    r16a1[ary_index(i)] = r16a1[ary_index(i)] + 1.0L;
    r4a1[ary_index(i)] = r4a1[ary_index(i)] - 0.0F;
    r8a1[ary_index(i)] = r8a1[ary_index(i)] - 0.0;
    r16a1[ary_index(i)] = r16a1[ary_index(i)] - 0.0L;
    r4a1[ary_index(i)] = r4a1[ary_index(i)] - 1.0F;
    r8a1[ary_index(i)] = r8a1[ary_index(i)] - 1.0;
    r16a1[ary_index(i)] = r16a1[ary_index(i)] - 1.0L;
  }

  
  r4a2[1][1] = r4a2[1][1] + 0.0F;
  r8a2[1][1] = r8a2[1][1] + 0.0;
  r16a2[1][1] = r16a2[1][1] + 0.0L;
  r4a2[1][1] = r4a2[1][1] + 1.0F;
  r8a2[1][1] = r8a2[1][1] + 1.0;
  r16a2[1][1] = r16a2[1][1] + 1.0L;
  r4a2[1][1] = r4a2[1][1] - 0.0F;
  r8a2[1][1] = r8a2[1][1] - 0.0;
  r16a2[1][1] = r16a2[1][1] - 0.0L;
  r4a2[1][1] = r4a2[1][1] - 1.0F;
  r8a2[1][1] = r8a2[1][1] - 1.0;
  r16a2[1][1] = r16a2[1][1] - 1.0L;

  r4a2[vd1][vd2] = r4a2[vd1][vd2] + 0.0F;
  r8a2[vd2][vd3] = r8a2[vd2][vd3] + 0.0;
  r16a2[vd3][vd1] = r16a2[vd3][vd1] + 0.0L;
  r4a2[vd1][vd2] = r4a2[vd1][vd2] + 1.0F;
  r8a2[vd2][vd3] = r8a2[vd2][vd3] + 1.0;
  r16a2[vd3][vd1] = r16a2[vd3][vd1] + 1.0L;
  r4a2[vd1][vd2] = r4a2[vd1][vd2] - 0.0F;
  r8a2[vd2][vd3] = r8a2[vd2][vd3] - 0.0;
  r16a2[vd3][vd1] = r16a2[vd3][vd1] - 0.0L;
  r4a2[vd1][vd2] = r4a2[vd1][vd2] - 1.0F;
  r8a2[vd2][vd3] = r8a2[vd2][vd3] - 1.0;
  r16a2[vd3][vd1] = r16a2[vd3][vd1] - 1.0L;

  r4a2[va1[0]][va1[1]] = r4a2[va1[0]][va1[1]] + 0.0F;
  r8a2[va2[0]][va2[1]] = r8a2[va2[0]][va2[1]] + 0.0;
  r16a2[va3[0]][va3[1]] = r16a2[va3[0]][va3[1]] + 0.0L;
  r4a2[va1[0]][va1[1]] = r4a2[va1[0]][va1[1]] + 1.0F;
  r8a2[va2[0]][va2[1]] = r8a2[va2[0]][va2[1]] + 1.0;
  r16a2[va3[0]][va3[1]] = r16a2[va3[0]][va3[1]] + 1.0L;
  r4a2[va1[0]][va1[1]] = r4a2[va1[0]][va1[1]] - 0.0F;
  r8a2[va2[0]][va2[1]] = r8a2[va2[0]][va2[1]] - 0.0;
  r16a2[va3[0]][va3[1]] = r16a2[va3[0]][va3[1]] - 0.0L;
  r4a2[va1[0]][va1[1]] = r4a2[va1[0]][va1[1]] - 1.0F;
  r8a2[va2[0]][va2[1]] = r8a2[va2[0]][va2[1]] - 1.0;
  r16a2[va3[0]][va3[1]] = r16a2[va3[0]][va3[1]] - 1.0L;

  r4a2[ary_index(vd1)][ary_index(vd2)] = r4a2[ary_index(vd1)][ary_index(vd2)] + 0.0F;
  r8a2[ary_index(vd2)][ary_index(vd3)] = r8a2[ary_index(vd2)][ary_index(vd3)] + 0.0;
  r16a2[ary_index(vd3)][ary_index(vd1)] = r16a2[ary_index(vd3)][ary_index(vd1)] + 0.0L;
  r4a2[ary_index(vd1)][ary_index(vd2)] = r4a2[ary_index(vd1)][ary_index(vd2)] + 1.0F;
  r8a2[ary_index(vd2)][ary_index(vd3)] = r8a2[ary_index(vd2)][ary_index(vd3)] + 1.0;
  r16a2[ary_index(vd3)][ary_index(vd1)] = r16a2[ary_index(vd3)][ary_index(vd1)] + 1.0L;
  r4a2[ary_index(vd1)][ary_index(vd3)] = r4a2[ary_index(vd1)][ary_index(vd3)] - 0.0F;
  r8a2[ary_index(vd2)][ary_index(vd2)] = r8a2[ary_index(vd2)][ary_index(vd2)] - 0.0;
  r16a2[ary_index(vd3)][ary_index(vd1)] = r16a2[ary_index(vd3)][ary_index(vd1)] - 0.0L;
  r4a2[ary_index(vd1)][ary_index(vd2)] = r4a2[ary_index(vd1)][ary_index(vd2)] - 1.0F;
  r8a2[ary_index(vd2)][ary_index(vd3)] = r8a2[ary_index(vd2)][ary_index(vd3)] - 1.0;
  r16a2[ary_index(vd3)][ary_index(vd1)] = r16a2[ary_index(vd3)][ary_index(vd1)] - 1.0L;

  for (i=1; i<N; i++) {
    for (j=1; j<N; j++) {
      r4a2[1][1] = r4a2[1][1] + 0.0F;
      r8a2[1][1] = r8a2[1][1] + 0.0;
      r16a2[1][1] = r16a2[1][1] + 0.0L;
      r4a2[1][1] = r4a2[1][1] + 1.0F;
      r8a2[1][1] = r8a2[1][1] + 1.0;
      r16a2[1][1] = r16a2[1][1] + 1.0L;
      r4a2[1][1] = r4a2[1][1] - 0.0F;
      r8a2[1][1] = r8a2[1][1] - 0.0;
      r16a2[1][1] = r16a2[1][1] - 0.0L;
      r4a2[1][1] = r4a2[1][1] - 1.0F;
      r8a2[1][1] = r8a2[1][1] - 1.0;
      r16a2[1][1] = r16a2[1][1] - 1.0L;

      r4a2[i][j] = r4a2[i][j] + 0.0F;
      r8a2[i][j] = r8a2[i][j] + 0.0;
      r16a2[i][j] = r16a2[i][j] + 0.0L;
      r4a2[i][j] = r4a2[i][j] + 1.0F;
      r8a2[i][j] = r8a2[i][j] + 1.0;
      r16a2[i][j] = r16a2[i][j] + 1.0L;
      r4a2[i][j] = r4a2[i][j] - 0.0F;
      r8a2[i][j] = r8a2[i][j] - 0.0;
      r16a2[i][j] = r16a2[i][j] - 0.0L;
      r4a2[i][j] = r4a2[i][j] - 1.0F;
      r8a2[i][j] = r8a2[i][j] - 1.0;
      r16a2[i][j] = r16a2[i][j] - 1.0L;

      r4a2[va1[i%M]][va1[j%M]] = r4a2[va1[i%M]][va1[j%M]] + 0.0F;
      r8a2[va2[i%M]][va2[j%M]] = r8a2[va2[i%M]][va2[j%M]] + 0.0;
      r16a2[va3[i%M]][va3[j%M]] = r16a2[va3[i%M]][va3[j%M]] + 0.0L;
      r4a2[va1[i%M]][va1[j%M]] = r4a2[va1[i%M]][va1[j%M]] + 1.0F;
      r8a2[va2[i%M]][va2[j%M]] = r8a2[va2[i%M]][va2[j%M]] + 1.0;
      r16a2[va3[i%M]][va3[j%M]] = r16a2[va3[i%M]][va3[j%M]] + 1.0L;
      r4a2[va1[i%M]][va1[j%M]] = r4a2[va1[i%M]][va1[j%M]] - 0.0F;
      r8a2[va2[i%M]][va2[j%M]] = r8a2[va2[i%M]][va2[j%M]] - 0.0;
      r16a2[va3[i%M]][va3[j%M]] = r16a2[va3[i%M]][va3[j%M]] - 0.0L;
      r4a2[va1[i%M]][va1[j%M]] = r4a2[va1[i%M]][va1[j%M]] - 1.0F;
      r8a2[va2[i%M]][va2[j%M]] = r8a2[va2[i%M]][va2[j%M]] - 1.0;
      r16a2[va3[i%M]][va3[j%M]] = r16a2[va3[i%M]][va3[j%M]] - 1.0L;

      r4a2[ary_index(j)][ary_index(i)] = r4a2[ary_index(j)][ary_index(i)] + 0.0F;
      r8a2[ary_index(i)][ary_index(j)] = r8a2[ary_index(i)][ary_index(j)] + 0.0;
      r16a2[ary_index(i)][ary_index(j)] = r16a2[ary_index(i)][ary_index(j)] + 0.0L;
      r4a2[ary_index(i)][ary_index(j)] = r4a2[ary_index(i)][ary_index(j)] + 1.0F;
      r8a2[ary_index(i)][ary_index(j)] = r8a2[ary_index(i)][ary_index(j)] + 1.0;
      r16a2[ary_index(i)][ary_index(j)] = r16a2[ary_index(i)][ary_index(j)] + 1.0L;
      r4a2[ary_index(j)][ary_index(i)] = r4a2[ary_index(j)][ary_index(i)] - 0.0F;
      r8a2[ary_index(i)][ary_index(j)] = r8a2[ary_index(i)][ary_index(j)] - 0.0;
      r16a2[ary_index(j)][ary_index(i)] = r16a2[ary_index(j)][ary_index(i)] - 0.0L;
      r4a2[ary_index(j)][ary_index(i)] = r4a2[ary_index(j)][ary_index(i)] - 1.0F;
      r8a2[ary_index(i)][ary_index(j)] = r8a2[ary_index(i)][ary_index(j)] - 1.0;
      r16a2[ary_index(i)][ary_index(j)] = r16a2[ary_index(i)][ary_index(j)] - 1.0L;
    }
  }

  
  r4a3[1][2][3] = r4a3[1][2][3] + 0.0F;
  r8a3[4][5][6] = r8a3[4][5][6] + 0.0;
  r16a3[7][8][9] = r16a3[7][8][9] + 0.0L;
  r4a3[1][2][3] = r4a3[1][2][3] + 1.0F;
  r8a3[4][5][6] = r8a3[4][5][6] + 1.0;
  r16a3[7][8][9] = r16a3[7][8][9] + 1.0L;

  for (i=1; i<N; i++) {
    for (j=1; j<N; j++) {  
      for (k=1; k<N; k++) {  
	r4a3[i][j][k] = r4a3[i][j][k] + 0.0F;
	r8a3[i][j][k] = r8a3[i][j][k] + 0.0;
	r16a3[i][j][k] = r16a3[i][j][k] + 0.0L;
	r4a3[i][j][k] = r4a3[i][j][k] + 1.0F;
	r8a3[i][j][k] = r8a3[i][j][k] + 1.0;
	r16a3[i][j][k] = r16a3[i][j][k] + 1.0L;
	r4a3[i*vd1][j*vd1][k*vd1] = r4a3[i*vd1][j*vd1][k*vd1] + 0.0F;
	r8a3[i*vd1][j*vd1][k*vd1] = r8a3[i*vd1][j*vd1][k*vd1] + 0.0;
	r16a3[i*vd1][j*vd1][k*vd1] = r16a3[i*vd1][j*vd1][k*vd1] + 0.0L;
	r4a3[i+vd0][j+vd0][k+vd0] = r4a3[i+vd0][j+vd0][k+vd0] + 1.0F;
	r8a3[i+vd0][j+vd0][k+vd0] = r8a3[i+vd0][j+vd0][k+vd0] + 1.0;
	r16a3[i+vd0][j+vd0][k+vd0] = r16a3[i+vd0][j+vd0][k+vd0] + 1.0L;
      }
    }
  }

  res = sum_of_data();

  if (res == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}

static void init_data()
{
  int i, j, k;

  r4d = r8d = r16d = 0.0F;

  for (i=0; i<N; i++) {
    r4a1[i] = ((float)i/(float)N);
    r8a1[i] = ((double)i/(double)N);
    r16a1[i] = ((long double)i/(long double)N);
    for (j=0; j<N; j++) {
      r4a2[i][j] = ((float)i/(float)N)*((float)j/(float)N);
      r8a2[i][j] = ((double)i/(double)N)*((double)j/(double)N);
      r16a2[i][j] = ((long double)i/(long double)N)*((long double)j/(long double)N);
      for (k=0; k<N; k++) {
	r4a3[i][j][k] = ((float)i/(float)N)*((float)j/(float)N)*((float)k/(float)N);
	r8a3[i][j][k] = ((double)i/(double)N)*((double)j/(double)N)*((double)k/(double)N);
	r16a3[i][j][k] = ((long double)i/(long double)N)*((long double)j/(long double)N)*((long double)k/(long double)N);
      }
    }
  }
}

static int sum_of_data()
{
  int i, j, k;
  float r4a1sum=0.0F,r4a2sum=0.0F,r4a3sum=0.0F;
  double r8a1sum=0.0,r8a2sum=0.0,r8a3sum=0.0;
  long double r16a1sum=0.0L,r16a2sum=0.0L,r16a3sum=0.0L;
  int res;

  for (i=0; i<N; i++) {
    r4a1sum = r4a1sum + r4a1[i];
    r8a1sum = r8a1sum + r8a1[i];
    r16a1sum = r16a1sum + r16a1[i];
    for (j=0; j<N; j++) {
      r4a2sum = r4a2sum + r4a2[i][j];
      r8a2sum = r8a2sum + r8a2[i][j];
      r16a2sum = r16a2sum + r16a2[i][j];
      for (k=0; k<N; k++) {
	r4a3sum = r4a3sum + r4a3[i][j][k];
	r8a3sum = r8a3sum + r8a3[i][j][k];
	r16a3sum = r16a3sum + r16a3[i][j][k];
      }
    }
  }

  res = (int)((long double)r4d + (long double)r8d + r16d
	      + (long double)r4a1sum + (long double)r8a1sum + r16a1sum
	      + (long double)r4a2sum + (long double)r8a2sum + r16a2sum
	      + (long double)r4a3sum + (long double)r8a3sum + r16a3sum);
	 

  return(res);
}


static int ary_index( int a)
{
  int res;

  res = a * a;
  res = res % M;

  return(res);
}
