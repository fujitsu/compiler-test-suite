
void foo(double *a,double *b,int *c){
  int i;
  for(i=0;i<1024;++i){
    a[c[i]] = a[c[i]] + b[i];
  }
}

int main(void){
  return 0;
}
