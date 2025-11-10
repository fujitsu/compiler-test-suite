extern void foo(void) __attribute__ ((noreturn));

int main()
{
  foo();
  return 0;
}
