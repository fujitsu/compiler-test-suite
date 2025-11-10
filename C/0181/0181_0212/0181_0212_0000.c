extern void foo(void) __attribute__ ((no_instrument_function));

int main()
{
  foo();
  return 0;
}
