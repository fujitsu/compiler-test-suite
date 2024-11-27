
double a[32][32][32];
double b[32][32][32];
void foo(int L,int M,int N){
  int i,j,k;

  for (i=0;i<L;++i){
    for (j=0;j<M;++j){
      for (k=0;k<N;++k){
	b[i][j][k] = a[i][j][k] + b[i][j][k];
      }
    }
  }
}

int main(void){
  return 0;
}
