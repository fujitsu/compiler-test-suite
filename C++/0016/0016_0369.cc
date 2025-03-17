 



































#include <iostream> 
using namespace std;

int	func(int p1);

class	CLS {
	int	b1;
  public:
	void	func(int a1) {
		cout << "CLS::func\n";
		b1 = a1;
	}

	class	CLS_nest {
		int	b_n1;
	  public:
		class	CLS_nest1 {
		  protected:
			char	b_n11;
		  public:
			char	func_2(char p1);
		};

		void	func_1(int p1);
	}obj_n;
};

void	CLS::CLS_nest::func_1(int p1)
{
	cout << "CLS::CLS_nest::func_1\n";
	b_n1 = p1;
}

char	CLS::CLS_nest::CLS_nest1::func_2(char p1)
{
	cout << "CLS::CLS_nest::CLS_nest2::func_2\n";
	b_n11 = p1;
	return((char) 1);
}

class	CLS2 {
	char	ch1;
  public:
	int	func(char p1);
};

int	CLS2::func(char p1)
{
	cout << "CLS2::func\n";
	ch1 = p1;
	return((int) ch1+10);
}
int main()
{
	class	CLS2_before1 {
		long	ch_n1;
	  public:
		long	func(int p1) {
			cout << "CLS2_before1::func\n";
			ch_n1 = p1;
			return(ch_n1);
		}
	} obj1;

	CLS	obj;
	CLS2	obj2;

	obj.func(10);
	obj1.func(10);
	obj2.func('A');

	func(20);

}

int	func(int p1) {
		
	cout << "func\n";
	p1++;
	return(p1);
}

