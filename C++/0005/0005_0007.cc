#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif
int main(){
  int x, y;
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
