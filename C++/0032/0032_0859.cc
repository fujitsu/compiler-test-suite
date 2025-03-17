#include <stdio.h>
class ozObj {
public:
	ozObj(int){}
};

class OZObj : virtual public ozObj {
public:
	OZObj(int i): ozObj(i){}
};


template < class T >
class AA : public OZObj {
public:
	AA(int i): OZObj(i), ozObj(i) {}
};

template < class T >
class BB : public AA< T > {
public:
	BB(int i): AA<T>(i), ozObj(i) {}  
};


class BBB {
};

class S_4 : public BB< BBB > {
public:
	S_4(int i): BB< BBB > (i), ozObj(i){}
};
int main()
{
 printf ("ok\n");
}
