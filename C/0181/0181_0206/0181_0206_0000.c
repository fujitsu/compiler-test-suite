extern void foo(void) __attribute__ ((noinline));

int main()
{
  foo();
  return 0;
}
