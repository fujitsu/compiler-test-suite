#include <stdio.h>
enum BOOL {TRUE, FALSE};

template < class T >
class AA  {
public:
	AA();
	BOOL  f();
};

template < class T >
AA< T >::AA(){}


template < class T >
BOOL AA< T >::f(){ printf("ok\n"); return TRUE;}
int main()
{
	AA< int >  b;
	b.f();
}
