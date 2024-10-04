#include <stdio.h>
int main()

{
	int n = 10;
	typedef int B[n];
        n += 1;
        printf("%d\n", sizeof(B));
     int b[n];
        printf("%d\n", sizeof(b));
}
