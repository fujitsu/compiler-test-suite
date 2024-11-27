
void foo(double *a,double * b,int n) {
  int i;
  for (i=0;i<n;++i) {
    a[i] = a[i] + b[i];
  }
}

int main(void){
  return 0;
}
