#include <stdlib.h>
#include <string.h>
#include <stdio.h>

class myclass {
	int	a;
	static  int b;
public:
	friend int sum(myclass x);
	void set_ab(int i, int j);
};

int myclass::b;

void myclass::set_ab(int i, int j)
{
	a = i;
	b = j;
}

int  sum(myclass x)
{
	return x.a + x.b;
}
int main()
{
	myclass n;
	n.set_ab(3,4);
	printf("Result = %d\n", sum(n));
	return 0;
}

