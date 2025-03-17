#include <iostream>

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
        int count = 0;
	X_1232p41 x = 3;
	Y_1232p41 y = 4;
	X_1232p41 *p = &x;
	p = &y;
	if( *p == 12 ) count++;
        else std::cout << "*p : " << *p << std::endl;
	if( p->X_1232p41::operator int() == 4 )
            count++;
        else
            printf("ng p->X_1232p41::operator int() : %d \n",
                       p->X_1232p41::operator int() );

        if( count == 2 ) printf("ok\n");
}
