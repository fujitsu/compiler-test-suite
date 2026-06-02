

extern int printf(const char *, ...);
int main(){
  int x = 0, y = 0;
  ({ x++; y++; });
  if (x == 1 && y == 1) {
    printf("OK\n");
  }
  else {
    printf("NG:x=%d,y=%d\n", x, y);
  }
  return 0;
}
