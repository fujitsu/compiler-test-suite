extern void foo(void) __attribute__ ((stack_protect));

int main()
{
  foo();
  return 0;
}
