class over {
public:
	int i;
	over() { i = 1; }
	over(int ii) { i = ii; }
};

#include <stdio.h>
int main()
{
	over ***p1 = new over **;
	*p1 = new over *;
	**p1 = new over (7);
	over ** const *p2 = new over ** const (*p1);
	over * volatile * const *p3 = new over * volatile * const (*p1);
	over * volatile const *p4 = new over * volatile const (**p1);

        puts("ok");
}
