extern void foo(void);
extern int g_val __attribute__ ((deprecated));

int main()
{
  foo();
  return 0;
}
