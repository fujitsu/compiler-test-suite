
double a[1024];
void foo(){
  int i;
  double b;
  b = 0;
#pragma omp parallel for reduction(+:b)
  for (i=0;i<1024;++i){
    b = b + a[i];
  }
  a[0] = b;
}

int main(void){
  return 0;
}
