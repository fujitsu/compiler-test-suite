#include <stdio.h>

class over {
public:
	int i;
	over *po;

	over * operator &  () { --i; return this; };
	over() { i = 1; po = 0; }
	over(int ii) { i = ii; po = 0; }
};
int main()
{
	struct X {
		int i;
		X(int ii, double dd, const over &oo) : i(ii)
			{
				if(oo.i == 5 ) printf("ok\n");
                                  else printf("ng oo.i : %d \n", oo.i);
			}
		};

	X *px = new X (3, (4), 5);
}
