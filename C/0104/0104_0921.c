
void foo(double * restrict a,double * restrict b,
	 float * restrict c,float * restrict d){
  int i;
  for (i=0;i<1024;++i){
    a[i] = a[i] + b[i];
    c[i] = c[i] + d[i];
  }
}

int main(void){
  return 0;
}
