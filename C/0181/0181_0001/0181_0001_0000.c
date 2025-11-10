
enum e1 {
  white,
  blue,
  yellow,
  red
};

static enum e1 const e1_array[] =
{
  yellow,
  red,
  red,
  blue,
  white
};

extern int printf(const char*, ...);
extern int func2(const enum e1 *);

int main() {
  int res;
  res = func2(e1_array);
  if (res == 2) {
    printf("OK\n");
  }
  else {
    printf("NG : res=%d\n", res);
  }
  return 0;
}
