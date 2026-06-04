
extern int printf(const char *, ...);

#define X  1
#undef X
#define X  2

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
