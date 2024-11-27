
void foo(int *a,int * b,int n) {
  int i;
  for (i=0;i<n;++i) {
    if(a[i] == 0){
      a[i] = b[i];
    }
  }
}

int main(void){
  return 0;
}
