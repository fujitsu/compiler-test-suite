#include <vector>
#include <iostream>
#define XSIZE 3200
#define YSIZE 3030

class XXX {
private:
  void init(std::vector< std::vector<double> >& mtx){
    mtx.resize(XSIZE);
    for(int i = 0; i < mtx.size(); ++i) {
      mtx[i].resize(YSIZE);
      for(int j = 0; j < mtx[i].size();j++) {
	mtx[i][j] = i + 2*j;
      }
    }
  }
  void loop1(std::vector< std::vector<double> >& mx,
	     std::vector< std::vector<double> >& my) {
    for(int i = 0; i < XSIZE; ++i) {
      for(int j = 0; j < YSIZE;j++) {
	mx[i][j] += my[i][j];
      }
    }
  }
  void loop2(std::vector< std::vector<double> >& mx,
	     std::vector< std::vector<double> >& my) {
    for(int j = 0; j < YSIZE;j++) {
      for(int i = 0; i < XSIZE; ++i) {
	mx[i][j] += my[i][j];
      }
    }
  }
public:
  XXX(){
  }
  ~XXX(){}
  void test() {
    std::vector< std::vector<double> > m1;
    std::vector< std::vector<double> > n1;
    std::vector< std::vector<double> > m2;
    std::vector< std::vector<double> > n2;
    init(m1);
    init(n1);
    loop1(m1,n1);
    init(m2);
    init(n2);
    loop2(m2,n2);
    test(m1,m2);
  }
  void test(std::vector< std::vector<double> >& mx,
	    std::vector< std::vector<double> >& my) {
    for(int i = 0; i < mx.size(); ++i) {
      for(int j = 0; j < my[i].size();j++) {
	if(mx[i][j] != my[i][j]) {
	  std::cout << "ng" << std::endl;
	  return;
	}
      }
    }
    std::cout << "ok" << std::endl;
  }
};
void sub() {
  class XXX x;
  x.test();
}
int main() {
  sub();
}
