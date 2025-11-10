static int g = 3;

__attribute__ ((pure))
int foo(int x)
{
  return x + g;
}
