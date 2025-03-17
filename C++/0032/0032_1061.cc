#include <stdio.h>

#define chkn(n, i) ( i ? 1 : pr_chkn(n))

static int pr_chkn (int n)
{
	printf("NOTE: The actual value was: %d \n",(long)n);
	return 0;
}


class c_128p14 {
public:
	int i;
	c_128p14& operator=(const c_128p14& b) { i = b.i+1; return *this; }
	c_128p14(const c_128p14& b) { i = b.i + 11; }
	c_128p14(int n) { i = n; }
	c_128p14() { i = 0; }
};

class d_128p14 : public c_128p14 {
public:
	c_128p14 c1;
	
};  

d_128p14 f_128p14(d_128p14 d)
{
	d.i *= 2;          
	d.c1.i *= 5;       
	return d;          
}
int main()
{
	d_128p14 a;   
	int n;
        int count = 0;

	n = a.i;    chkn(n, n == 0 || n == 11); a.i = 0; 
	n = a.c1.i; chkn(n, n == 0 || n == 11); a.c1.i = 0;
	d_128p14 b = a;     
	n = b.i;    chkn(n, n == 0 || n == 11); b.i = 0; 
	n = b.c1.i; chkn(n, n == 0 || n == 11); b.c1.i = 0;
	a = b;              
	n = a.i;    if(n == 1) count++; a.i = 1;
	n = a.c1.i; if(n == 1) count++; a.c1.i = 1;
	d_128p14 c;
	a.i = a.c1.i = 3;
	c = f_128p14(a);  
	n = c.i;
	chkn(n, n==3*2+1||n==(3+11)*2+1||n==((3)*2)+11+1||n==((3+11)*2)+11+1);
	n = c.c1.i;
	chkn(n, n==3*5+1||n==(3+11)*5+1||n==((3)*5)+11+1||n==((3+11)*5)+11+1);

        if( count == 2 ) printf("ok\n");
        else printf("ng\n");
	}
