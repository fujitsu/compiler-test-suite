class X97p11 {
public:
	class Y97p11 {
	public:
		class Z97p11 {
			int i;
		public:
			Z97p11(int ii) : i(ii) { }
			operator int() { return i; }
		};
	private:
		Z97p11 z;
	public:
		Y97p11(int ii) : z(ii) { }
		operator int() { return z; }
	};
private:
	Y97p11 y;
public:
	X97p11(int ii) : y(ii) { }
	operator int() { return y; }
};

#include <stdio.h>
int main()
{
	X97p11 x(11);
	x == 11;

        puts("ok");
}




