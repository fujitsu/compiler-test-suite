
void foo(double *a ,double * restrict b) {
  int i;
  double c;
  c = 0;
  for (i=0;i<1024;++i){
    c = c + b[i];
  }
  *a = c;
}

int main(void){
  return 0;
}
