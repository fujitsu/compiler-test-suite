
#include <iostream> 
using namespace std;

class	loc {
	int	a[3];
	int	longitude,latitude;
  public:
	loc() {};
	loc(int lg,int lt);
	loc(int i,int j,int k);
	
	void show() {
		cout << longitude << " ";
		cout << latitude << "\n";
	}
	
	loc	operator+(loc op2);
	loc	operator()(int i,int j);
	int	operator[](int i);
};

loc::loc(int lg,int lt) {
		longitude = lg;
		latitude = lt;
}

loc::loc(int i,int j,int k) {
		a[0] = i;
		a[1] = j;
		a[2] = k;
}

loc	loc::operator()(int i,int j) {
	longitude = i;
	latitude = j;
	return *this;
}

loc	loc::operator+(loc op2) {
	loc	temp;

	temp.longitude = op2.longitude + longitude;
	temp.latitude = op2.latitude + latitude;
	return temp;
}

int	loc::operator[](int i) {
	return a[i];
}
int main() {
	loc	ob1(10,20),ob2(5,30),ob3(1,2,3);

	ob1.show();	
	ob1(7,8);
	ob2.show();	
	
	ob1 = ob1+ob2;
	ob1.show();	

	cout << ob3[1];

	return 0;
}
