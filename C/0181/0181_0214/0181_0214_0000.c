extern void sub1(void) __attribute__ ((no_reorder));
extern void sub2(void) __attribute__ ((no_reorder));
extern void sub3(void);

int main()
{
  sub1();
  sub2();
  sub3();
  return 0;
}
