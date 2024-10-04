#include <stdio.h>
struct tag {
	char *s[2];
} s = {"abc", "def"};
int main()
{
 printf("%s\n", s.s[0]);
 printf("%s\n", s.s[1]);
}
