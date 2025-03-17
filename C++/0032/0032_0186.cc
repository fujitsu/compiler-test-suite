
class X
	{
public:
	int i;
	X(int ii) : i(ii) { }
private:
	X(const X &x) : i(x.i) { }
	};

X foo()
	{
	return X(0); 
	}

#include <stdio.h>
int main()
	{
        puts("ok");
	return foo().i;
}
