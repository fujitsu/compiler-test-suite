#include <stdio.h>

class over {
public:
	int i;

	over & operator =  (const over &b) { i = b.i + 2; return *this; };
	over() { i = 1; }
	over(int ii) { i = ii; }
	over   operator *  (const over &b) { return over( (i *  b.i) + 2 );};
	over   operator /  (const over &b) { return over( (i /  b.i) + 2 );};
	over   operator %  (const over &b) { return over( (i %  b.i) + 2 );};
};


class over2 : public over { 
public:
	over2 operator * (int b) { return over2( (i * b) + 2 );};
	over2 operator / (int b) { return over2( (i / b) + 2 );};
	over2 operator % (int b) { return over2( (i % b) + 2 );};
	over2(int i) : over(i) { };
};
int main()
{
    int count = 0;

     
    {
	over2 a2 (3),  b2 (2);
	int over2::*pmi2 = &over2::i;
	if( ( a2 *  b2 .* pmi2 ).i == 8 )  
            count++;
        else
            printf("ng (a2*b2.*pmi2).i : %d \n", (a2*b2.*pmi2).i );
    }

     
    {
	over2 a2 (8),  b2 (2);
	int over2::*pmi2 = &over2::i;
	if( ( a2 /  b2 .* pmi2 ).i == 6 )  
            count++;
        else
            printf("ng (a2/b2.*pmi2).i : %d \n", (a2/b2.*pmi2).i );
    }

     
    {
	over2 a2 (7),  b2 (2);
	int over2::*pmi2 = &over2::i;
	if( ( a2 %  b2 .* pmi2 ).i == 3 )  
            count++;
        else
            printf("ng (a2%%b2.*pmi2).i : %d \n", (a2%b2.*pmi2).i );
    }

    if( count == 3 ) printf("ok\n");
}
