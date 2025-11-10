#include <stdio.h>

unsigned test_1(unsigned X) {
  return (unsigned char)X;
}

#ifdef ORIGINAL
int main() {
	printf("%d\n", test(123456));
        return 0;
}
#else
void sub1()
{
	printf("%d\n", test_1(123456));
}
#endif
