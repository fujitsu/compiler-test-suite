#define X  3
#pragma push_macro("X")
#undef X
#define X  10
#pragma pop_macro("X")

#if __cplusplus
extern "C" int printf(const char *, ...);
#else
extern int printf(const char *, ...);
#endif

int main() {
  int x [X];
  int y = X;
  if (y == 3) {
    printf("OK\n");
  }
  else {
    printf("NG:y=%d\n",y);
  }
  return y;
}
