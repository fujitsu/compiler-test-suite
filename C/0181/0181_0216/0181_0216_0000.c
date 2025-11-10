extern void foo(void) __attribute__ ((no_sanitize_thread));

int main()
{
  foo();
  return 0;
}
