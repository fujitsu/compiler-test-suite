#include <stdio.h>
#include <string.h>

char *c_128p92_which = "";

class c_128p92 {
public:
	int i;
	c_128p92& operator=(c_128p92& b)
		{
		i = b.i;
		c_128p92_which = "non-const";
		return *this;
		}
	c_128p92& operator=(const c_128p92& b)
		{
		i = b.i;
		c_128p92_which = "const";
		return *this;
		}
	c_128p92(c_128p92& b) { i = b.i; }
	c_128p92(int n) { i = n; }
	c_128p92() { i = 0; }
};

class d_128p92 : public c_128p92 { };
int main()
{
  int count = 0;
	c_128p92 a;
	d_128p92 a1;
	const d_128p92 a2;
	int n;
	n = a.i; if( n == 0 ) count++; a.i = 0;
	a = a2;              
	n = a.i; if( n == 0 ) count++; a.i = 0;
	if( !strcmp( c_128p92_which, "const") && count == 2 ) printf("ok\n");
            else printf("ng c_128p92_which : \"%s\" \n", c_128p92_which);
}
