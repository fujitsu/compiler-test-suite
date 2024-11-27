#include <stdio.h>
int cnt(int *i);
int main()
{
	void    array(), bxd1(), bxd2(), exd2();
	exd2();			 
}
void 
exd2()
{
	struct tag {
		long int t[3];
	};
	struct tag t2, *tp;
	long int i;
	int     a, b, c, d, ary[2][10];
	for (i = 0; i < 3; i++) {
		t2.t[i] = (i + 1) * 4;
	}
	tp = &t2;
	for (i = 0; i < 3; i++) {
printf("%d %d\n",tp->t[i],i);
		if (tp->t[i] != (i + 1) * 4) {
			printf("ex1 ng\n");
			return;
		}
	}
	cnt(&a);
	cnt(&b);
	cnt(&c);
	cnt(&d);
	for (i = 0; i < 2; i++) {
		ary[i][a] = d;
		ary[i][b] = d;
		ary[i][c] = d;
	}
	for (i = 0; i < 2; i++) {
		if (ary[i][a] != d) {
			printf("ex2 ng\n");
			return;
		}
	}
	printf("ex2 ok\n");
}
int cnt(i)
	int    *i;
{
	*i = 4;
}
