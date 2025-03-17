 













#include <iostream>
using namespace std;

class	cl {
	char	a1;
  public:
	int	val;

	class	c2 {
	  public:
		char	b1;
		void	func_1(char bb);
	} nc2;

	cl(int i) {val = i;}
	int	double_val() {return val+val;}
};

void	cl::c2::func_1(char bb) {
	b1 = bb;
}
int main() {
	int	cl::*data;
	char	cl::c2::*data1=&cl::c2::b1;
	int	(cl::*func)();
	cl	ob1(1),ob2(2);
	cl	*p1,*p2;
	int	i1;

	p1 = &ob1;
	p2 = &ob2;

	data1 = &cl::c2::b1;

	data = &cl::val;
	i1 = p1->*data;

	func = &cl::double_val;
        p2->nc2.func_1(10);

	cout << "Here are values: ";
	cout << p1->*data << " " << p2->*data << "\n";

	cout << "Here they are doubled: ";
	cout << (p1->*func)() << " ";
	cout << (p2->*func)() << "\n";

	return 0;
}
