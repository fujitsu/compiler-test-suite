int a = 0;
void sub1()
{
  int i, j=0;
  a = a + 1;
  for (i=0 ; i<10 ; i++) {
    j++;
  }
}
void sub2()
{
  int i, j=0;
  a = a + 1;
  for (i=0 ; i<10 ; i++) {
    j++;
  }
}
void sub3()
{
  int i, j=0;
  a = a + 1;
  for (i=0 ; i<10 ; i++) {
    j++;
  }
}
int main()
{
  sub1();
  sub2();
  sub3();
  return 0;
}
