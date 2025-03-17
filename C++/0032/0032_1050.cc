#include <stdio.h>

static int count_1346p14 = 0;

struct X_1346p14 {
	int i;
	int j;
	X_1346p14(int k) : i(k), j(k+1) { };
};

struct Y_1346p14 {
	int i;
	X_1346p14 * rep;
	virtual X_1346p14 * operator -> ();
	Y_1346p14(X_1346p14 &x) : rep(&x) , i(x.i + 10) { };
};

X_1346p14 * Y_1346p14::operator -> ()
{
	++count_1346p14;
	return rep;
};

struct Z_1346p14 {
	int i;
	Y_1346p14 * rep;
	virtual Y_1346p14 & operator -> ();
	Z_1346p14(Y_1346p14 &y) : rep(&y) , i(y.i + 100) { };
};

Y_1346p14 & Z_1346p14::operator -> () 
{
	++count_1346p14;
	return *rep;
};

class D_1346p14 : public Z_1346p14 {
public:
	D_1346p14(Y_1346p14 &y) : Z_1346p14(y) { };
};

Y_1346p14 &(D_1346p14::*pmf2_1346p14)() = &D_1346p14::operator->;
int main()
{
	X_1346p14 a (1);  Y_1346p14 ya (a); D_1346p14 da (ya);
	int count = 0;

	if( count_1346p14 == 0) count++;
            else printf("count_1346p14 : %d \n", count_1346p14);

	da->i == 1;
	if( count_1346p14 == 2) count++;
            else printf("count_1346p14 : %d \n", count_1346p14);

	(da.*pmf2_1346p14)()->i  == 1;
	if( count_1346p14 == 4) count++;
            else printf("count_1346p14 : %d \n", count_1346p14);

	da->j == 2;
	if( count_1346p14 == 6) count++;
            else printf("count_1346p14 : %d \n", count_1346p14);

	(da.*pmf2_1346p14)()->j  == 2;
	if( count_1346p14 == 8) count++;
            else printf("count_1346p14 : %d \n", count_1346p14);

        if( count == 5 ) printf("ok\n");
}

