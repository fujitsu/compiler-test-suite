__attribute__ ((leaf))
int boo(int x, int y)
{
  return x + y;
}

int foo(int x, int y)
{
  return boo(x, y);
}
