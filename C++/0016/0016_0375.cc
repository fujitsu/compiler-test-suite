 




















#include <iostream>
using namespace std;

class	pwr {
	double	b;
	int	e;
	double	val;
  public:
	pwr(double base,int exp);
	virtual double	get_pwr() { return val;}
};

class	pwr1 {
	int	j;
  public:
	int	get_pwr(int num) {
		j = num;
		return  num;
	}
	int	get_j() {
		return j;
	}
};

pwr::pwr(double base,int exp)
{
	b = base;
	e = exp;
	val = 1;
	if(exp == 0) return;
	for(;exp>0;exp--) {
		val = val*b;
	}
}
int main() {
	class pwr_derived : public pwr {
		double	i;
	  public:
		pwr_derived(double t):pwr(1.0,1) { i = t; }
		double	get_pwr() {
			return i;
		}
	};

	pwr	x(4,0),y(2.5,1),z(5.7,0);
	pwr1	x1,*xp;
	pwr_derived	xd2(100),*xdp;

	xp = &x1;
	xdp = &xd2;

	cout << x.get_pwr() << " ";
	cout << y.get_pwr() << " ";
	cout << z.get_pwr() << "\n";

	cout << xp->get_pwr(10) << "\n";
	cout << xdp->get_pwr() << "\n";
	
	return 0;
}
