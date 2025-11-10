#include <stdio.h>

struct vec2_2 { double X, Y; };

void print_2(struct vec2_2 S, struct vec2_2 T) {
	printf("%f, %f, %f, %f\n", S.X, S.Y, T.X, T.Y);
}

#ifdef ORIGINAL
int main() {
	struct vec2 U, V;
	U.X = .5; U.Y = 1.2;
	V.X = -123.01; V.Y = 1/3.0;
	print(U, V);
	return 0;
}
#else
void sub2()
{
	struct vec2_2 U, V;
	U.X = .5; U.Y = 1.2;
	V.X = -123.01; V.Y = 1/3.0;
	print_2(U, V);
}
#endif
