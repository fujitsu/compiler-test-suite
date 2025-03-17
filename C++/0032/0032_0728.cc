#include <iostream>
using namespace std;

template<class T> class task {
public:
	friend void next_time();
	friend task<T>* preempt(task<T>* in){
		try{
			throw 'a';
		}
		catch(int){}
		return in;
	}
};

void next_time(){
	try{}
	catch(task<int>){}
}
int main(){
	task<int> x;
	task<char> y;
	try{
		next_time();
		preempt(&x);
	}
	catch(char c){
		cout << c << endl;
	}
}
