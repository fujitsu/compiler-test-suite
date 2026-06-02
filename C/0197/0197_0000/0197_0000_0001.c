int volatile a;
int
main1(void)
{
  int i;
  int *q = (int*)&a;
  int v = 0;

  for (i = 0; i <= 10; i++) {
    v += a;
    *q = 2;
  }
  return v;
}
