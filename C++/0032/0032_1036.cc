#include <stdio.h>

int ctor522p61 = 0;

class X522p61 {
public:
	int i;
	X522p61(int ii) : i(ii) { ++ctor522p61; }
	X522p61(const X522p61 &x) : i(x.i) { ++ctor522p61; }
};

class Y522p61 {
public:
	X522p61 x;
	Y522p61(int ii) : x(ii) { ++ctor522p61; }
	Y522p61(const Y522p61 &y) : x(y.x) { ++ctor522p61; }
};

int f522p61(X522p61 x, Y522p61 y)
{
	if( ctor522p61 >= 3 ) ;
          else printf("check ng ctor522p61 : %d \n", ctor522p61 );
	return x.i + y.x.i;
}
int main()
{
	X522p61 x (3);
	Y522p61 y (5);
	ctor522p61 = 0;
	if( f522p61(x, y) == 8 ) printf("ok\n");
          else printf("f522p61(x,y) : %d \n", f522p61(x,y) );
}
