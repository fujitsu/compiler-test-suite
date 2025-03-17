

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10


int ginit1=-1;
int gend1 =-1;
int gstep1=-1;
int ginit2=-1;
int gend2 =-1;
int gstep2=-1;
int ginit3=-1;
int gend3 =-1;
int gstep3=-1;
int ginit4=-1;
int gend4 =-1;
int gstep4=-1;



void sub(double (*aa)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*bb)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*cc)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*dd)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 int init1 ,int end1, int step1,
	 int init2 ,int end2, int step2,
	 int init3 ,int end3, int step3,
	 int init4 ,int end4, int step4);
void bar01(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   int idx1,unsigned int idx2, long int idx3,
	   unsigned long int idx4, int idx5, unsigned int idx6);
void bar02(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   long int idx1,unsigned long int idx2, int idx3,
	   unsigned int idx4,long int idx5, unsigned long int idx6);
void bar03(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   unsigned long int idx1,unsigned int idx2, long int idx3,
	   int idx4,  unsigned long int idx5, unsigned int idx6);
void bar04(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   long int idx1, int idx2,  unsigned long int idx3,
	   unsigned int idx4, long int idx5, int idx6);




void bar01(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   int idx1,unsigned int idx2, long int idx3,
	   unsigned long int idx4, int idx5, unsigned int idx6)
{
  arr[idx1][idx2][idx3][idx4][idx5][idx6] = idx1+idx2+idx3+idx4+idx5+idx6+1;
}

void bar02(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   long int idx1,unsigned long int idx2, int idx3,
	   unsigned int idx4,long int idx5, unsigned long int idx6)
{
  arr[idx1][idx2][idx3][idx4][idx5][idx6] = idx1+idx2+idx3+idx4+idx5+idx6+1;
}

void bar03(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   unsigned long int idx1,unsigned int idx2, long int idx3,
	   int idx4,  unsigned long int idx5, unsigned int idx6)
{
  arr[idx1][idx2][idx3][idx4][idx5][idx6] = idx1+idx2+idx3+idx4+idx5+idx6+1;
}

void bar04(double (*arr)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	   long int idx1, int idx2,  unsigned long int idx3,
	   unsigned int idx4, long int idx5, int idx6)
{
  arr[idx1][idx2][idx3][idx4][idx5][idx6] = idx1+idx2+idx3+idx4+idx5+idx6+1;
}


void sub(double (*aa)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*bb)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*cc)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 double (*dd)[ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2],
	 int init1 ,int end1, int step1,
	 int init2 ,int end2, int step2,
	 int init3 ,int end3, int step3,
	 int init4 ,int end4, int step4)
{
  
  int i,j,k,l,m,n;
  unsigned int i_u,j_u,k_u,l_u,m_u,n_u;
  long int i_i8,j_i8,k_i8,l_i8,m_i8,n_i8;
  unsigned long int i_u8,j_u8,k_u8,l_u8,m_u8,n_u8;
  double res=0;
  unsigned long int flag =0;

  int linit1=0;
  int lend1 =ELM_MAX;
  int lstep1=1;

  int linit2=0;
  int lend2 =ELM_MAX-1;
  int lstep2=1;

  int linit3=1;
  int lend3 =ELM_MAX-1;
  int lstep3=2;

  int linit4=1;
  int lend4 =ELM_MAX-1;
  int lstep4=1;

  unsigned int test_var=1;

  printf("loop 01 \n");

  for(    i    =      0; i    <     1;  i   =   1    + i){
#pragma omp parallel
    {
#pragma omp for collapse(4)  private(n_u)
      for(j_u  = linit1; j_u  < gend1; j_u  =  step1 + j_u){ 
      for(k_i8 = ginit1; k_i8 <  end1; k_i8 =     2  +  k_i8){ 
      for(l_u8 =  init1; l_u8 <     9; l_u8 = lstep1 + l_u8 ){ 
      for(m    =      1; m    <  end1; m    = gstep1 + m){
      for(n_u  =      0; n_u  <     2; n_u  =  1     + n_u){
	bar01(aa,i,j_u,k_i8,l_u8,m,n_u);
      }}}}}
    }
  }

  for(    i    =      0; i    <     1;  i   =   1    + i){
      for(j_u  = linit1; j_u  < gend1; j_u  =  step1 + j_u){
      for(k_i8 = ginit1; k_i8 <  end1; k_i8 =      2 + k_i8){
      for(l_u8 =  init1; l_u8 <     9; l_u8 = lstep1 + l_u8 ){
      for(m    =      1; m    <  end1; m    = gstep1 + m){
      for(n_u  =      0; n_u  <     2; n_u  =  1     + n_u){
	res = i+j_u+k_i8+l_u8+m+n_u+1;
	if(res != aa[i][j_u][k_i8][l_u8][m][n_u] ) {
	  flag = 1;
	  printf("res=%lf result=%lf \n", aa[i][j_u][k_i8][l_u8][m][n_u]);
	  printf("%d %d %d %d %d %d \n",i,j_u,k_i8,l_u8,m,n_u);
	  goto test_end;
	}
      }}}}}
  }
  

  printf("loop 02 \n");

  for(    i_i8 =      0; i_i8 <=    1; i_i8 = ++i_i8){
#pragma omp parallel
    {
#pragma omp for collapse(4)  private(n_u8)
      for(j_u8 =  init2; j_u8 <=lend2; j_u8 = j_u8  + gstep2){
      for(k    =      0; k    <=gend2; k    = k     + step2){
      for(l_u  = linit2; l_u  <= end2; l_u  = 3     + l_u){
      for(m_i8 = ginit2; m_i8 <=    9; m_i8 = m_i8  + lstep2){
      for(n_u8 =      0; n_u8 <=    1; n_u8++){
	bar02(bb,i_i8,j_u8,k,l_u,m_i8,n_u8);
      }}}}}
    }
  }
  for(    i_i8 =      0; i_i8 <=    1; i_i8 = ++i_i8){
      for(j_u8 =  init2; j_u8 <=lend2; j_u8 = j_u8  + gstep2){
      for(k    =      0; k    <=gend2; k    = k     + step2){
      for(l_u  = linit2; l_u  <= end2; l_u  = 3     + l_u){
      for(m_i8 = ginit2; m_i8 <=    9; m_i8 = m_i8  + lstep2){
      for(n_u8 =      0; n_u8 <=    1; n_u8++){
	res = i_i8+j_u8+k+l_u+m_i8+n_u8+1;
	if(res != bb[i_i8][j_u8][k][l_u][m_i8][n_u8] ) {
	  flag = 2;
	  printf("res=%lf result=%lf \n",bb[i_i8][j_u8][k][l_u][m_i8][n_u8]);
	  printf("%d %d %d %d %d %d \n",i_i8,j_u8,k,l_u,m_i8,n_u8);
	  goto test_end;
	}
      }}}}}
  }

  printf("loop 03 \n");

  for(     i_u8 = 0     ; i_u8 <=    2; i_u8 = 1 + i_u8){
#pragma omp parallel
    {
#pragma omp for collapse(4)  private(n_u)
      for( j_u  = ginit3; j_u  < lend3; j_u  = j_u  +  step3){
      for( k_i8 = linit3; k_i8  <= end3; k_i8 = k_i8 +  2){
      for( l    =  init3; l    <    10; l    = l    + gstep3){
      for( m_u8 =      2; m_u8 <=gend3; m_u8 = m_u8 + lstep3){
      for( n_u  = 0     ; n_u  <     2; n_u = n_u   + 1){
	bar03(cc,i_u8,j_u,k_i8,l,m_u8,n_u);
      }}}}}
    }
  }
  for(     i_u8 = 0     ; i_u8 <=    2; i_u8 = 1 + i_u8){
      for( j_u  = ginit3; j_u  < lend3; j_u  = j_u  +  step3){
      for( k_i8 = linit3; k_i8  <= end3; k_i8 = k_i8 +  2){
      for( l    =  init3; l    <    10; l    = l    + gstep3){
      for( m_u8 =      2; m_u8 <=gend3; m_u8 = m_u8 + lstep3){
      for( n_u  = 0     ; n_u  <     2; n_u = n_u   + 1){
	res = i_u8+j_u+k_i8+l+m_u8+n_u+1;
	if(res != cc[i_u8][j_u][k_i8][l][m_u8][n_u] ) {
	  flag = 3;
	  printf("res=%lf result=%lf \n",cc[i_u8][j_u][k_i8][l][m_u8][n_u]);
	  printf("%d %d %d %d %d %d \n",i_u8,j_u,k_i8,l,m_u8,n_u);
	  goto test_end;
	}

      }}}}}
  }


  printf("loop 04 \n");

  for(     i_i8 =      0; i_i8 <= 1; i_i8++){
#pragma omp parallel
    {
#pragma omp for collapse(4)  private(n)
      for( j    =  init4; j    < gend4;    j = j + lstep4){
      for( k_u8 =      1; k_u8 <=lend4; k_u8 = step4 + k_u8){
      for( l_u  = ginit4; l_u  <  end4; l_u  = l_u   + 1){
      for( m_i8 = linit4; m_i8 <=    9; m_i8 = gstep4 + m_i8){
      for( n    =      0; n    <     2; ++n){
	bar04(dd,i_i8,j,k_u8,l_u,m_i8,n);
      }}}}}
    }
  }
  for(     i_i8 =      0; i_i8 <= 1; i_i8++){
      for( j    =  init4; j    < gend4;    j = j + lstep4){
      for( k_u8 =      1; k_u8 <=lend4; k_u8 = step4 + k_u8){
      for( l_u  = ginit4; l_u  <  end4; l_u  = l_u   + 1){
      for( m_i8 = linit4; m_i8 <=    9; m_i8 = gstep4 + m_i8){
      for( n    =      0; n    <     2; ++n){
	res = i_i8+j+k_u8+l_u+m_i8+n+1;
	if(res != dd[i_i8][j][k_u8][l_u][m_i8][n] ) {
	  flag = 4;
	  printf("res=%lf result=%lf \n",dd[i_i8][j][k_u8][l_u][m_i8][n]);
	  printf("%d %d %d %d %d %d \n",i_i8,j,k_u8,l_u,m_i8,n);
	  goto test_end;
	}
      }}}}}
  }

 test_end :;
  printf("check -->");

  if(flag) {
    printf("NG :flag = %d \n",flag);
  }
  else {
    printf("OK \n");
  }


}

int main(void) {
  double a[2][ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2];
  double b[2][ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2];
  double c[2][ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2];
  double d[2][ELM_MAX][ELM_MAX][ELM_MAX][ELM_MAX][2];

  int i,j,k,l,m,n;

  int init1=0, end1=ELM_MAX,   step1=2;
  int init2=1, end2=ELM_MAX-1, step2=1;
  int init3=1, end3=ELM_MAX-1, step3=2;
  int init4=0, end4=ELM_MAX-1, step4=1;


  ginit1 =1;
  gend1  =ELM_MAX;
  gstep1 =1;

  ginit2 =0;
  gend2  =ELM_MAX-1;
  gstep2 =1;

  ginit3 =1;
  gend3  =ELM_MAX-1;
  gstep3 =2;

  ginit4 =0;
  gend4  =ELM_MAX-1;
  gstep4 =2;


  
  for(i=0; i<2 ; ++i) {
    for(j=0; j<ELM_MAX ; ++j) {
      for(k=0; k<ELM_MAX ; ++k) {
	for(l=0; l<ELM_MAX ; ++l) {
	  for(m=0; m<ELM_MAX ; ++m) {
	    for(n=0; n<2 ; ++n) {
	      a[i][j][k][l][m][n] = -1;
	      b[i][j][k][l][m][n] = -1;
	      c[i][j][k][l][m][n] = -1;
	      d[i][j][k][l][m][n] = -1;
	    }
	  }
	}
      }
    }
  }

  sub(a,b,c,d,
      init1 , end1,  step1,
      init2 , end2,  step2,
      init3 , end3,  step3,
      init4 , end4,  step4);

  return 0;
}
