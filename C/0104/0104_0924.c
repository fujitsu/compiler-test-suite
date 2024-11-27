
void foo(double * restrict a,double * restrict b) {
  int i;
#pragma clang loop unroll_count(5)
  for (i=0;i<1024;++i){
    a[i] = b[i];
  }
}

int main(void){
  return 0;
}
