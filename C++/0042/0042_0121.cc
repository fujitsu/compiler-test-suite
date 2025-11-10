extern "C" int printf(const char*, ...);

int f() {return 1;}
int main()
{
  int a = 1;
  int && rvr1 = a + 1;
  int && rvr2 = f();
}

