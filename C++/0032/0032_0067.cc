#include <stdio.h>
unsigned char x=2;
void func1(unsigned char x);
void func2(unsigned char x){ if (x==2) printf("ok\n"); else printf("ng\n"); }
int main()
{
  func2 (x);
}
