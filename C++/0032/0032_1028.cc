
#include <stdio.h>

int count = 0;


int u95p13bdto = 0;

static void s95p13b()
{
    {
        int i = 13;
	union u2 {
		int i;
		double d;
		int fi() { return i+1; };
		double fd() { return d; };
		u2(int ii) : i(ii) { };
		u2(double dd) : d(dd) { };
		~u2() { u95p13bdto = i; }
	};

	u2 u3 (i);
	if( u3.fi() == i+1 )
            count++;
        else
            printf("ng <95p13b> u3.fi() : %d \n", u3.fi() );
    }

	if( u95p13bdto == 13 )
            count++;
        else
            printf("ng <95p13b> u95p13bdto : %d \n", u95p13bdto);
}


int c95p21dto = 0;

class c95p21 {
public:
	union { int i; double d; };
	int fi() { return i; };
	double fd() { return d; };
	c95p21(int ii) : i(ii) { };
	c95p21(double dd) : d(dd) { };
	~c95p21() { c95p21dto = i; }
};

static void s95p21()
{
	c95p21 c1 (13);
	if( c1.fi() == 13 )
            count++;
        else
            printf("ng <95p21> c1.fi() : %d \n", c1.fi());

	c95p21 c2 (14.0);
	if( c2.fd() == 14.0 )
            count++;
        else
            printf("ng <95p21> c2.fd() : %d \n", c2.fd());

    {
        int i = 13;
	c95p21 c3 (i);
	if( c3.fi() == i )
            count++;
        else
            printf("ng <95p21> c3.fi() : %d \n", c3.fi());
    }

	if(c95p21dto == 13)
            count++;
        else
            printf("ng <95p21> c95p21bdto : %d \n", c95p21dto);
}


class c95p22 {
public:
	union { int i; double d; };
	c95p22(int ii) : i(ii) { };
	c95p22(double dd) : d(dd) { };
};

class d95p22 : public c95p22 {
public:
	d95p22(int ii) : c95p22(ii) { };
	d95p22(double dd) : c95p22(dd) { };
	int fi() { return i; };
	double fd() { return d; };
};

static void s95p22()
{
	d95p22 d1 (13);
	if( d1.fi() == 13 )
            count++;
        else
            printf("ng <95p22> d1.fi() : %d \n", d1.fi());
}
int main()
{
	s95p13b();
	s95p21();
	s95p22();

        if( count == 7 ) printf("ok\n");
}
