#include <stdlib.h>
#include <string.h>
#include <stdio.h>

class base1 {
public:
	int 	i;
	base1(int x) { i = x; }
};

class base2 {
public:
	int 	k;
	base2(int x) { k = x; }
};




class derived: public base1, public base2 {
	int 	j;
	static int l;
public:
	derived( int x, int y, int z ): base1(y), base2(z) { j = x; }
	void show() { printf("%d     %d     %d\n", i, j, k); }
};
int main()
{
	class nest1 {
		int n1;
	public:
		nest1(int n = 0 ) { n1 = n; }

		class nest2 {
			char nn1[20];
			int  nn2;
		public:
			nest2(char *c, double c2 = 0)
				{ strcpy(nn1, c); nn2 = c2; }
			void show() { printf("%s     %d\n", nn1, nn2); }
		};
		void show() { printf("%d \n", n1); }
	};

	derived ob1( 3, 4, 5);
	nest1	ob2( 1 );
	nest1::nest2  ob3( "Face the challenge ", 999 );
	ob1.show();
	ob2.show();
	ob3.show();
	return 0;
}

