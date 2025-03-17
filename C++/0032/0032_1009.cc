int ieq(int i, int j) { return i == j; }

class rational {
public:
	int x, y;
	rational(int i, int j) {x = i; y = j;};
	rational operator +(int i) const { return rational(x + i * y, y); };
	operator int() const { return x / y; }
};

class omni {
public:
	int i;
	rational xy;
	operator int() const { return i; };
	operator rational() { return xy; };
	omni() : xy(1, 1) { }
	omni(int ii) : xy(1, ii) { }
	omni(const rational &r) : xy(r.x, r.y) { }
	~omni() { }
	};

int operator +(omni o, char c) { return o.i + c - 1; }

#include <stdio.h>
int main()
{
	ieq(::operator+(omni(2), '0'), '1');

        puts("ok");
}
