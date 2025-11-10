extern void (**fptr(void)) (const char *);

int main()
{
  void (**p)(const char *) = fptr();

  p[0]("sub1: OK");
  p[1]("sub2: OK");
  p[2]("sub3: OK");

  return 0;
}
