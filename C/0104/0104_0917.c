
void foo(double * restrict a ,double * restrict b,
	 double * restrict c ,double * restrict d) {
  int i;
  for (i=1;i<1024;++i){
    a[i] = a[i] + c[i] * d[i];
    b[i] = b[i-1] + a[i];
  }
}

int main(void){
  return 0;
}
