#include <stdio.h>

struct vec2_3 { double X, Y; };

void print_3(struct vec2_3 S) {
	printf("%f, %f\n", S.X, S.Y);
}

#ifdef ORIGINAL
int main() {
	struct vec2 U;
	U.X = .5; U.Y = 1.2;
	print(U);
	return 0;
}
#else
void sub3()
{
	struct vec2_3 U;
	U.X = .5; U.Y = 1.2;
	print_3(U);
}
#endif
