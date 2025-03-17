#include <stdio.h>

class X {
public:
	virtual int operator +(int i) {  return 1;}
};

class Y: public X{
public:

	 int operator +(int j) {  return 2;}    
};
int main()
{
	X *xp;
        Y yobj;
        xp = &yobj;

	if (xp->X::operator +(0)==1 ){
         printf ("ok\n");
        } else   {
         printf ("ng\n");
       }
}

