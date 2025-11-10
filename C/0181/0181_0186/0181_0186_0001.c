int g_val __attribute__ ((weak)) = 1;

__attribute__ ((always_inline))
int foo(int x)
{
  return x + g_val;
}
