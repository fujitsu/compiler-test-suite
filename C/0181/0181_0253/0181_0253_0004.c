#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct S_5 { _Bool X, Y; char str[100]; };

struct S_5 G = { 1, 1, "fooo" };

#ifdef ORIGINAL
int main() {
	int X = strlen(G.str);
	if (X == 10) {
	  scanf("%d, %d\n", &G.X, &G.Y);
        }
	printf("%d %d %d\n", G.X, G.Y, X);
	return X-4;
}
#else
void sub5()
{
	int X = strlen(G.str);
	if (X == 10) {
	  scanf("%d, %d\n", &G.X, &G.Y);
        }
	printf("%d %d %d\n", G.X, G.Y, X);
}
#endif
