#include <stdio.h>

class over {
public:
	int i;
	over *po;
	over * operator -> () {
		if (po == 0) { po = this; ++i; }
		return this;
		};
	over * operator &  () { --i; return this; };

	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; po = 0; }
	over(int ii) { i = ii; po = 0; }
	over   operator *  ()        { return over( - i - 1 ); };
	over   operator +  ()        { return over( - i + 2 ); };
	over   operator -  ()        { return over( - i - 2 ); };
	over   operator ->*(const over &b) { return over( (i +  b.i) + 2 );}; 
	over   operator *  (const over &b) { return over( (i *  b.i) + 2 );};
	over   operator +  (const over &b) { return over( (i +  b.i) + 2 );};
	over   operator -  (const over &b) { return over( (i -  b.i) + 2 );};
	over   operator &  (const over &b) { return over( (i &  b.i) + 2 );};
};


class over_b_134p21b : public over {
public:
	virtual int operator + (int b) { return ( (i + b) + 1 );};
	virtual int operator - (int b) { return ( (i + b) + 2 );};
	virtual int operator * (int b) { return ( (i + b) + 3 );};
	virtual int operator & (int b) { return ( (i + b) + 4 );};
	over_b_134p21b(int i) : over(i) { };
};

class over_b2_134p21b : public over_b_134p21b {
public:
	int operator + () { return ( i + 11 );};
	int operator - () { return ( i + 12 );};
	int operator * () { return ( i + 13 );};
	int operator & () { return ( i + 14 );};
	int operator + (int b) { return ( (i + b) + 11 );};
	int operator - (int b) { return ( (i + b) + 12 );};
	int operator * (int b) { return ( (i + b) + 13 );};
	int operator & (int b) { return ( (i + b) + 14 );};
	over_b2_134p21b(int i) : over_b_134p21b(i) { };
};
int main()
{
	over_b_134p21b a (1);
	over_b2_134p21b a2 (1);
	int b = 2;
        int count = 0;

	int (over_b_134p21b::*pf1)(int) = &over_b_134p21b::operator+ ;
	int (over_b_134p21b::*pf2)(int) = &over_b_134p21b::operator- ;
	int (over_b_134p21b::*pf3)(int) = &over_b_134p21b::operator* ;
	int (over_b_134p21b::*pf4)(int) = &over_b_134p21b::operator& ;

	if( (a.*pf1)(b) == 4 ) count++; else printf("ng1\n");
	if( (a.*pf2)(b) == 5 ) count++; else printf("ng2\n");
	if( (a.*pf3)(b) == 6 ) count++; else printf("ng3\n");
	if( (a.*pf4)(b) == 7 ) count++; else printf("ng4\n");

	int (over_b2_134p21b::*pfb1)(int) = &over_b2_134p21b::operator+ ;
	int (over_b2_134p21b::*pfb2)(int) = &over_b2_134p21b::operator- ;
	int (over_b2_134p21b::*pfb3)(int) = &over_b2_134p21b::operator* ;
	int (over_b2_134p21b::*pfb4)(int) = &over_b2_134p21b::operator& ;
	int (over_b2_134p21b::*pfb5)() = &over_b2_134p21b::operator+ ;
	int (over_b2_134p21b::*pfb6)() = &over_b2_134p21b::operator- ;
	int (over_b2_134p21b::*pfb7)() = &over_b2_134p21b::operator* ;
	int (over_b2_134p21b::*pfb8)() = &over_b2_134p21b::operator& ;

	if( (a2.*pfb1)(b) == 14 ) count++; else printf("ng5\n");
	if( (a2.*pfb2)(b) == 15 ) count++; else printf("ng6\n");
	if( (a2.*pfb3)(b) == 16 ) count++; else printf("ng7\n");
	if( (a2.*pfb4)(b) == 17 ) count++; else printf("ng8\n");

	if( (a2.*pfb5)() == 12 ) count++; else printf("ng9\n");
	if( (a2.*pfb6)() == 13 ) count++; else printf("ng10\n");
	if( (a2.*pfb7)() == 14 ) count++; else printf("ng11\n");
	if( (a2.*pfb8)() == 15 ) count++; else printf("ng12\n");

        if( count == 12 ) printf("ok\n");
}
