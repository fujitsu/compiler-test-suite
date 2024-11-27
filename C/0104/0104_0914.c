
void foo(int * restrict a,int * restrict b,
	 int * restrict c,int * restrict d) {
  int i;

  for (i=0;i<1024;++i){
    a[i] = b[i];
    c[i] = b[i]  + c[i+1] + d[i+2];
    d[i] = d[d[c[i*10+b[i]*c[i]+d[i-1]*d[c[b[d[i+1]]]] + d[b[i]] + c[i+1]*i]+1]];
  }
}

int main(void){
  return 0;
}
