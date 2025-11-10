extern void foo(void) __attribute__ ((no_icf));
extern void boo(void) __attribute__ ((no_icf));

int main()
{
  foo();
  boo();
  return 0;
}
