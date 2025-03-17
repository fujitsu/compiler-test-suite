#include <stdio.h>

#define chkn(n, i) (i ? 1 : pr_chkn(n))

static int pr_chkn (int n)
{
	printf("NOTE: The actual value was: %d \n", n);
	return 0; 
}

int count = 0;

void ieq(int i, int j)
{
        if( i == j ) count++;
        else printf("ng n : %d  constant = %d \n", i, j );
}

class c_128p41_enclose {
public:
    class c_128p41 {
    public:
	int i;
	c_128p41& operator=(const c_128p41& b) { i = b.i+1; return *this; }
	c_128p41(c_128p41& b) { i = b.i + 11; ++b.i; } 
	c_128p41(int n) { i = n; }
	c_128p41() { i = 0; }
    };
    class c2_128p41 : virtual public c_128p41 { };
    class c3_128p41 : virtual public c_128p41 { };
    class d_128p41 : public c2_128p41, public c3_128p41 { public: };
                                               
    d_128p41 f_128p41(d_128p41 arg) {
	d_128p41 d;
	d.c_128p41::i = 2 * arg.c_128p41::i; 
	return d;                 
    }
    void tests()
    {
	d_128p41 a; 
	d_128p41 a2; 
	int n;
	n = a.c_128p41::i;    ieq(n, 0);  a2.c_128p41::i = 0;
	d_128p41 b = a2; 
	n = b.c_128p41::i; chkn(n, n == 0 || n == 11); b.c_128p41::i = 0;
	n = a2.c_128p41::i; ieq(n, 1);  a2.c_128p41::i = 0; 

	a2 = b;              
	n = a2.c_128p41::i;    ieq(n, 1); a2.c_128p41::i = 1;
	d_128p41 c;
	d_128p41 a3;
	n = a3.c_128p41::i;    ieq(n, 0);
	c = f_128p41(a3);  
	n = c.c_128p41::i;
	chkn(n, n==0*2+1||n==(0+11)*2+1||n==((0)*2)+11+1||n==((0+11)*2)+11+1);
    }
};
int main()
{
    c_128p41_enclose c;
    c.tests();

    if( count == 4 ) printf("ok\n");
}
