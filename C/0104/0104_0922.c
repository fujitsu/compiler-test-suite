
void foo(double * restrict a,double * restrict b) {
  int i;
  for (i=0;i<1024;++i){
    a[i] = b[i];
  }
}

int main(void){
  return 0;
}
