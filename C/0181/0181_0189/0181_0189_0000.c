



extern void foo(const char *);

int main()
{
  foo(__func__);
  return 0;
}
