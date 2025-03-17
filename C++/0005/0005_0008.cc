#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif
int main(){
  int x, y = 0;
  for (x=0; x < 5; x++) {
    ({ int i = 5; y += i; });
  }
  if (x == 5 && y == 25) {
    printf("OK\n");
  }
  else {
    printf("NG:x=%d, y=%d\n", x, y);
  }
  return y;
}
