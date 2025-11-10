extern void foo(void) __attribute__ ((no_sanitize_address));

int main()
{
  foo();
  return 0;
}
