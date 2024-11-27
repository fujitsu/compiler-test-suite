#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int s2();
int alls();
int main()
{
	alls();
	s2();
exit (0);
}
int alls()
{
	struct st {	
		int i1 ;
		int i2 ;
		int i3 ;
	} a,c ;
	struct st b = { 1,2,3 } ;

	a = b ;
	c = a ;
	printf("c.i1=%d, c.i2=%d, c.i3=%d\n",c.i1,c.i2,c.i3) ;
	a.i1=6 ;
	a.i2=5 ;
	a.i3=4 ;
	c = a ;
	printf("c.i1=%d, c.i2=%d, c.i3=%d\n",c.i1,c.i2,c.i3) ;
}

struct TAG {
        int a;
        int b;
        int c;
};
struct TAG answer[10];
int s2()
{
        struct TAG st1;
        struct TAG st2,*ast,pst4;
        int i;

        st1.a = st1.b = st1.c = 1 ;
        st2 = st1 ;
	pst4 = st2 ;
        answer[0] = pst4;              
	st2.a = st2.b = st2.c = 9 ;
        answer[1] = st2;

        for(i=0;i<2;i++) {
              printf(" %d %d %d \n",  answer[i].a, answer[i].b, answer[i].c);
        }
}
