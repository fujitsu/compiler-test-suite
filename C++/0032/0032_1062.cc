#include <stdio.h>

#define chkn(n, i) (i ? 1 : pr_chkn(n))

static int pr_chkn (int n)
{
	printf("NOTE: The actual value was: %d \n",(long)n);
	return 0; 
}

int count = 0;
int main()
{
	
	class c_128p31 {
	public:
		int i;
		c_128p31& operator=(const c_128p31& b) { i = b.i+1; return *this; }
		c_128p31(c_128p31& b) { i = b.i + 11; }
		c_128p31(int n) { i = n; }
		c_128p31() { i = 0; }
	};

	class d_128p31 : public c_128p31 {
	public:
		c_128p31 c1;
		
	};  

	class e_128p31 {
	public:
		d_128p31 f_128p31(d_128p31 arg)
		{
			d_128p31 d;
			d.i = 2 * arg.i;          
			d.c1.i = 5 * arg.c1.i;    
			return d;                 
		}
		void tests()
		{
			d_128p31 a; 
			d_128p31 a2; 
			int n;
			n = a.i;    if( n == 0 ) count++;  a2.i = 0;
			n = a.c1.i; if( n == 0 ) count++;  a2.c1.i = 0;
			const d_128p31 b = a2; 
			n = b.i;    chkn(n, n == 0 || n == 11); 
			n = b.c1.i; chkn(n, n == 0 || n == 11);
			a2 = b;              
			n = a2.i;    chkn(n, n == 1 || n == 12); a2.i = 1;
			n = a2.c1.i; chkn(n, n == 1 || n == 12); a2.c1.i = 1;
			d_128p31 c;
			d_128p31 a3;
			n = a3.i;    if( n == 0) count++;
			n = a3.c1.i; if( n == 0) count++;
			c = f_128p31(a3);  
			n = c.i;
			chkn(n, n==0*2+1||n==(0+11)*2+1||n==((0)*2)+11+1||n==((0+11)*2)+11+1);
			n = c.c1.i;
			chkn(n, n==0*5+1||n==(0+11)*5+1||n==((0)*5)+11+1||n==((0+11)*5)+11+1);
		}
	};

	e_128p31 c;
	c.tests();

        if( count == 4 ) printf("ok\n");
        else printf("ng\n");
}
