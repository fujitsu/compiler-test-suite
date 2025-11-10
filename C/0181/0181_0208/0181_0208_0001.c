__attribute__ (( ifunc ("resolve_calc")))
int foo(int x, int y);

int my_calc(int x, int y)
{
  return x + y;
}

static int (*resolve_calc(void)) (int, int)
{
  return my_calc;
}
