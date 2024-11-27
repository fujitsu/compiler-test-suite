#include <stdio.h>
#include <math.h>

#define MAX_DOMAIN_NODES 4
#define N_AVERAGE_ROW_NODES 1

static int System_nNodes;
static double SM[MAX_DOMAIN_NODES * N_AVERAGE_ROW_NODES][3][3];
static int System_minIndexs[MAX_DOMAIN_NODES];
static int System_maxIndexs[MAX_DOMAIN_NODES];
static int System_index[MAX_DOMAIN_NODES * N_AVERAGE_ROW_NODES];

double a[MAX_DOMAIN_NODES][3];
double b[MAX_DOMAIN_NODES][3];
double b[MAX_DOMAIN_NODES][3];

int main()
{
  double tmp[MAX_DOMAIN_NODES][3];

  int iNode;
  int k,kend,i,j;

  int kk;
  double l_i0_j0;
  double l_i0_j1;
  double l_i0_j2;

  double l_i1_j0;
  double l_i1_j1;
  double l_i1_j2;

  double l_i2_j0;
  double l_i2_j1;
  double l_i2_j2;

  System_nNodes=MAX_DOMAIN_NODES;
  System_maxIndexs[0] = 3;
  System_maxIndexs[1] = 3;
  System_maxIndexs[2] = 3;
  System_maxIndexs[3] = 3;
  System_minIndexs[0] = 1;
  System_minIndexs[1] = 1;
  System_minIndexs[2] = 1;
  System_minIndexs[3] = 1;
  System_index[0] = 1;
  System_index[1] = 1;
  System_index[2] = 1;
  System_index[3] = 1;

  for (i=0;i<MAX_DOMAIN_NODES;i++){
  for (j=0;j<3;j++){
  for (k=0;k<3;k++){
    SM[i][j][k] = 0;
    tmp[i][k] = 0;
  }
  }
  }

  for (iNode = System_nNodes - 1;
       iNode >= 0; 
       iNode--) {

     k = System_maxIndexs[iNode] - 1; 
    {
      b[iNode][2] = tmp[iNode][2];
      
      tmp[iNode][0] -= SM[k][2][0] * b[iNode][2];
      tmp[iNode][1] -= SM[k][2][1] * b[iNode][2];
      
      b[iNode][1] = tmp[iNode][1];
      
      tmp[iNode][0] -= SM[k][1][0] * b[iNode][1];
      
      b[iNode][0] = tmp[iNode][0];
    }

    kend=System_maxIndexs[iNode];
    for (k = System_minIndexs[iNode];
	 k < kend ; 
	 k++) {
      int nodeId_j = System_index[k];
      
      l_i0_j0 = SM[k][0][0];
      l_i0_j1 = SM[k][0][1];
      l_i0_j2 = SM[k][0][2];

      l_i1_j0 = SM[k][1][0];
      l_i1_j1 = SM[k][1][1];
      l_i1_j2 = SM[k][1][2];

      l_i2_j0 = SM[k][2][0];
      l_i2_j1 = SM[k][2][1];
      l_i2_j2 = SM[k][2][2];
      
      tmp[nodeId_j][0] 
	-= l_i2_j0 * b[iNode][2]
	+ l_i1_j0 * b[iNode][1]
	+ l_i0_j0 * b[iNode][0];
      
      tmp[nodeId_j][1] 
	-= l_i2_j1 * b[iNode][2]
	+ l_i1_j1 * b[iNode][1]
	+ l_i0_j1 * b[iNode][0];
      
      tmp[nodeId_j][2] 
	-= l_i2_j2 * b[iNode][2]
	+ l_i1_j2 * b[iNode][1]
	+ l_i0_j2 * b[iNode][0];

    }
  }

  printf (" 2380-end \n");
}
