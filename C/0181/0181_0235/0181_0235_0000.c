extern void foo(void) __attribute__ ((weak));

int main()
{
  foo();
  return 0;
}
