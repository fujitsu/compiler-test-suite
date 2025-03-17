#include <stdio.h>
class A {
public:
	int	z(void){ return 0;}
	int	(A::*put(int a))(void){return &A::z;}
};

int main()
{
	A x,*xxx;
	int (A::*ppp)(void);
	ppp=x.put(0);
	(x.*ppp)();
        printf("ok\n");
}

