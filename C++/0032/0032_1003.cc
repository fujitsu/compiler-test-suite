#include <stdio.h>

class c94p15 {
public:
	int f1() { return m94p15[0]; }
	static int m94p15[];  
	c94p15(int i) { m94p15[0] = i+1; };
};

int c94p15::m94p15[2] = {0};
int main()
{
	c94p15 o (3);
	if(o.f1() == 4)
            printf("ok\n");
        else
            printf("ng o.f1() : %d \n", o.f1());
}




