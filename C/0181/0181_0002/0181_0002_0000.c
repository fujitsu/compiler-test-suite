
#define NULL ((void*)0)

struct st1 {
  char *name;
  int flag;
};

static struct st1 const st1_array[] =
{
  {"aa",  1},
  {NULL,  0}
};

extern int printf(const char *, ...);
extern int func2(const struct st1 *);

int main() {
  int res;
  res = func2(st1_array);
  if (res == 1) {
    printf("OK\n");
  }
  else {
    printf("NG : res=%d\n", res);
  }
  return 0;
}
