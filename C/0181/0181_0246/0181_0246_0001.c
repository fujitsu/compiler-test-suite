int val __attribute__ ((weak)) = 7;

int foo(int x)
{
  return x + val;
}
