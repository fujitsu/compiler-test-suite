 




































#include <iostream>
using namespace std;

class	CLS {
  public: 
	class	CLS_nest2 {
	  public:
		void	func() {
			cout << "CLS::CLS_nest2::func(private)\n";
		}
	};
	void	func(int a1) {
		cout << "CLS::func-->a1 = " << a1 << "\n";
	}

	class	CLS_nest {
          public:
		void	func_1(int p1);
		int	b_n1;
	}obj_n;
};

void	CLS::CLS_nest::func_1(int p1)
{
	cout << "CLS::CLS_nest::func_1---> p1 = " << p1 << "\n";
}
int main()
{
	class	CLS_before {
          public:
		long	ch_n1;
		long	func(int p1) {
			cout << "CLS_before::func\n";
			ch_n1 = p1;
			return(ch_n1);
		}
	};

	CLS	obj;
	CLS_before	obj1;

	obj.func(10);
	obj1.func(10);



}

