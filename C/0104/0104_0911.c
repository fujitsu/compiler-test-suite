
double a[1024][1024];
double b[1024][1024];
void foo(int M,int N){
  int i,j;

  for (i=0;i<M;++i){
    for (j=0;j<N;++j){
      b[i][j] = a[i][j] + b[i][j];
    }
  }
}

int main(void){
  return 0;
}
