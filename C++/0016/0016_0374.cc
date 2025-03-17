 




















#include <iostream> 
using namespace std;

class	cl {
	int	i;
  public:
	cl() { i=0;}
	cl(int j) { i=j;}
	int	get_i() {return i;}
};
int main()
{

	cl	ob[3] = {1,2,3};
	cl	*p;
	int	i;

	p = ob;
	for(i=0;i<3;i++) {
		cout << p->get_i() << "\n";
		p++;
	}

	return 0;
}
