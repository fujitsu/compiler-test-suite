
#include <iostream>
using namespace std;

class	base {
	unsigned	a1;
  public:
	 void	vfunc() {
		char	a2[10];
		a2[0] = 10;
		cout << "This is base's vfunc()\n";
	}
};
int main() {

	class	derived1:public base {
		short	d1;
	  public:
		 void	vfunc(short p1,long& p2) {
			short	d1;
			short	&d2 = derived1::d1;
			long	d3;

			d1 = p1;
			d3 = p2;
			d2 = 1;
			cout << "This is derived1's vfunc()\n";
		}
		
		class nest_class {
			int	n1;
		  public:
			 int	*nest_func(int p) {
				cout << "This is nested class\n";
				return ((int *)&p);
			}
		}np;
	};

	base	*p,b;
	derived1	d1;
	derived1::nest_class	dn;
	
	
	p = &b;
	p->vfunc();	

	
	p = &d1;
	p->vfunc();	


	return 0;
}
