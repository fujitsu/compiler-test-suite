
#include <iostream> 
using namespace std;

class AAA {
 protected:
	char	a2;
	static	int	a3;
	class BBB {
		int b1;
		int	func(int a) {
			return(a);
		}
	}bp;
 public:
	int	a1;
	inline int	max(int a,int b) {
		return( a>b ? a: b);
	}
};

#include <stdio.h>
int main()
{
	AAA	ap;
	int	&ref = ap.a1;
	int	aaaaa=1000000L;

	cout << ap.max(10,20);
	cout << " " << ap.max(99,88);

	return 0;
}

