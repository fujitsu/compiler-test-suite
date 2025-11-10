extern void foo(void) __attribute__ ((cold));

int main()
{
  foo();
  return 0;
}
