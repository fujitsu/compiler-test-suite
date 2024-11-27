
void foo(double * restrict a,double * restrict b,int n,int m) {
  int i;
  for (i=0;i<n;++i){
    if (n == m) {
      a[i] = i;
    } else {
      b[i] = i;
    }
  }
}

int main(void){
  return 0;
}
