extern void foo(void) __attribute__ ((hot));

int main()
{
  foo();
  return 0;
}
