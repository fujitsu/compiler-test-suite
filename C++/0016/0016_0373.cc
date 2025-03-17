#include <iostream> 
#include <cstring>  
using namespace std;

void	vfunc(int p1,char *p2);

class	base {

	unsigned	a1;
  public:
	int	a2;
	void	vfunc();
	class	base_nest {
	  public:
		char	a3[30];
		int	vfunc(unsigned a1);
	}bnest;
};

void	base::vfunc() {
	char	a2[10];
	a2[0] = 10;
	cout << "base::vfunc\n";
}

int	base::base_nest::vfunc(unsigned p1) 
{
	cout << "base::base_nest::vfunc\n";
	return(p1);
}
int main() {

	class	derived1 : public base {
		short	d1;
	  public:
		derived1() {
			cout << "derived1::derived1\n";
			d1 = 10;
		}
		virtual void	vfunc(short p1,long& p2) {
			short	d1;
			short	&d2 = derived1::d1;
			long	d3;

			d1 = p1;
			d3 = p2;
			d2 = 1;
			cout << "derived1::vfunc\n";
		}
		
		class nest_class {
			int	n1;
		  public:
			virtual int	*vfunc(int p) {
				cout << "derived1::nest_class::vfunc\n";
				return ((int *)&p);
			}
			virtual int	*func(int p) {
				n1 = p;
				cout << "derived1::nest_class::func()\n";
				return((int *)&n1);
			}
		}np;
	};

	base	*p,b;
	derived1	d1;
	derived1::nest_class	dn;
	
	
	p = &b;
	p->vfunc();	
	p->bnest.vfunc(10);

	
	p = &d1;
	p->vfunc();	

	dn.vfunc(10);

	vfunc(10,"hhhhhhh");

	return 0;
}

void	vfunc(int p1,char *p2)
{
	cout << "vfunc()\n";
	
	
}
