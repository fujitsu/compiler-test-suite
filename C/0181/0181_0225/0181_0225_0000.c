extern void foo(void) __attribute__ ((nothrow));

int main()
{
  foo();
  return 0;
}
