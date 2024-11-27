
void foo(double *a,double *b){
  int i;
  for(i=0;i<10;++i){
    a[i] = a[i] + b[i];
  }
}

int main(void){
  return 0;
}
