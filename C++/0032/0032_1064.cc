#include <stdio.h>
#include <string.h>

char *c_128p_101_which = "";

class c_128p_101 {
public:
	int i;
	c_128p_101& operator=(c_128p_101& b)
		{
		i = b.i;
		c_128p_101_which = "non-const";
		return *this;
		}
	c_128p_101& operator=(const c_128p_101& b)
		{
		i = b.i;
		c_128p_101_which = "const";
		return *this;
		}
	c_128p_101(c_128p_101& b) { i = b.i; }
	c_128p_101(int n) { i = n; }
	c_128p_101() { i = 0; }
	virtual int virtf() { return i+10; }
};

class d_128p_101 : public c_128p_101 {
public:
	int virtf() { return i+100; }
};
int main()
{
        int count = 0;
	c_128p_101 a;
	d_128p_101 a1;
	const d_128p_101 a2;
	c_128p_101 &r = (c_128p_101 &)a1; 
	int n;
	n = a.i; if( n == 0 ) count++;  a.i = 0;
	a = a2;              
	n = a.i; if( n == 0 ) count++; a.i = 0;
	if( !strcmp( c_128p_101_which, "const" ) ) count++;
            else printf("ng c_128p_101_which : \"%s\" \n", c_128p_101_which);

	a.i = 3;
	r = a;  
	if( !strcmp( c_128p_101_which, "non-const" ) ) count++;
            else printf("ng c_128p_101_which : \"%s\" \n", c_128p_101_which);
	if( a.virtf() == 13 ) count++;
            else printf("ng a.virtf() : %d \n", a.virtf());
	if( a1.virtf() == 103 ) count++;
            else printf("ng a1.virtf() : %d \n", a1.virtf());
	if( r.virtf() == 103 ) count++;
            else printf("ng r.virtf() : %d \n", r.virtf());

        if( count == 7 ) printf("ok\n");
        else printf("ng\n");
}
