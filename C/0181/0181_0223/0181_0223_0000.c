extern void foo(void) __attribute__ ((noplt));

int main()
{
  foo();
  return 0;
}
