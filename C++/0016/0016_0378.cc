#include <iostream> 
using namespace std;

class	ptr {
	public:
		char	s1;
};

class pcls{
	public:
		int ag;
	class	scls2 {
		public:
		int ag2;
		ptr	pobj;
		void	scls2_func() {
			cout << "This is nest class2\n";
		}
	}scls2_obj;
	class	scls3 {
		public:
		void	scls3_func() {
			cout << "This is nest class3\n";
		}
	}scls3_obj;
};
int main() {
	pcls	obj;

	
	
	
	obj.scls2_obj.scls2_func();
	obj.scls3_obj.scls3_func();
	
	
}
