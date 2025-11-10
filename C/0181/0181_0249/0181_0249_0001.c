int foo(int x)
{
  return (x > 1 ? x + foo(x - 1) : 1);
}
