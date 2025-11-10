extern void foo(void) __attribute__ ((no_sanitize_undefined));

int main()
{
  foo();
  return 0;
}
