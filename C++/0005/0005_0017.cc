#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif

#define X  1
#undef X
#define X  2
#pragma pop_macro("X")

int main() {
  int y = X;
  if (y == 2) {
    printf("OK\n");
  }
  else {
    printf("NG:y=%d\n", y);
  }
  return y;
}
