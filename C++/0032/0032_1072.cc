#include <stdio.h>

void ieq( int i, int j )
{
   if( i == j ) printf("ok\n");
   else printf("ng\n");
}
 
class X_1232p41 {
protected:
	int i;
public:
	X_1232p41(int ii) : i(ii) { }
	virtual operator int() { return i; }
};

class Y_1232p41 : public X_1232p41 {
	int j;
public:
	Y_1232p41(int ii) : X_1232p41(ii), j(2 * ii) { }
	operator int() { return i + j; }
};
int main()
{
	X_1232p41 x = 3;
	Y_1232p41 y = 4;
	X_1232p41 *p = &x;

	p = &y;

	ieq( *p, 12 );

}
