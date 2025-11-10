extern void foo() __attribute__ ((section("foo_test")));

int main()
{
  foo();
  return 0;
}
