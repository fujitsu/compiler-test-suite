
void bar(double *a){
  *a=1;
}
void foo(double *a){
  int i;
  for (i=0;i<1024;++i) {
    bar(&a[i]);
  }
}

int main(void){
  return 0;
}
