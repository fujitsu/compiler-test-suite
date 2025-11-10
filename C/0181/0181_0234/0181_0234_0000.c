extern void foo(void) __attribute__ ((used));

int main()
{
  foo();
  return 0;
}
