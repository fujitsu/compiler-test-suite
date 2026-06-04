

extern int printf(const char *, ...);
int main(){
  int x, y;
#pragma omp for
  for ( ({ x=0; y=0; });
        ({ int i = 5; x < i; });
        ({ x++; y++; }) );
  if (x == 5 && y == 5) {
    printf("OK\n");
  }
  else {
    printf("NG:x=%d, y=%d\n", x, y);
  }
  return x;
}
