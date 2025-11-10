extern void foo(void) __attribute__ ((optimize("O0")));

int main()
{
  foo();
  return 0;
}
