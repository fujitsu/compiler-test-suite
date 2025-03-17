class Dummy{};
typedef int *** Dummy_type;
template<class T, int i> class Dummy_temp {};
Dummy dummyobj;
int Dummy::*dmptr;
Dummy_temp<char,10> dummytempobj;
Dummy_type dummytypeobj;
short dummy_s;



class CA {
  void (*a())(){return 0;}
  int (*(*b(int,char))(float,int))(void){return 0;}
  char *c(int){return 0;}
  void ***d(char,short **(*)()){return 0;}
  short & e(int,...){return dummy_s;}
  int Dummy::*f(int,char Dummy::*){return dmptr;}
  float (*g(void))[10][20]{return 0;}
  Dummy h(Dummy,Dummy*,Dummy&){return dummyobj;}
  Dummy_type i(Dummy_type,Dummy_type*,Dummy_type&){return dummytypeobj;}
  Dummy_temp<char,10> j(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>){return dummytempobj;}
}caobj;


struct SA {
  void (*a())(){return 0;}
  int (*(*b(int,char))(float,int))(void){return 0;}
  char *c(int){return 0;}
  void ***d(char,short **(*)()){return 0;}
  short & e(int,...){return dummy_s;}
  int Dummy::*f(int,char Dummy::*){return dmptr;}
  float (*g(void))[10][20]{return 0;}
  Dummy h(Dummy,Dummy*,Dummy&){return dummyobj;}
  Dummy_type i(Dummy_type,Dummy_type*,Dummy_type&){return dummytypeobj;}
  Dummy_temp<char,10> j(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>){return dummytempobj;}
}saobj;


union UA {
  void (*a())(){return 0;}
  int (*(*b(int,char))(float,int))(void){return 0;}
  char *c(int){return 0;}
  void ***d(char,short **(*)()){return 0;}
  short & e(int,...){return dummy_s;}
  int Dummy::*f(int,char Dummy::*){return dmptr;}
  float (*g(void))[10][20]{return 0;}
  Dummy h(Dummy,Dummy*,Dummy&){return dummyobj;}
  Dummy_type i(Dummy_type,Dummy_type*,Dummy_type&){return dummytypeobj;}
  Dummy_temp<char,10> j(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>){return dummytempobj;}
}uaobj;


namespace NA {
  void (*a())(){return 0;}
  int (*(*b(int,char))(float,int))(void){return 0;}
  char *c(int){return 0;}
  void ***d(char,short **(*)()){return 0;}
  short & e(int,...){return dummy_s;}
  int Dummy::*f(int,char Dummy::*){return dmptr;}
  float (*g(void))[10][20]{return 0;}
  Dummy h(Dummy,Dummy*,Dummy&){return dummyobj;}
  Dummy_type i(Dummy_type,Dummy_type*,Dummy_type&){return dummytypeobj;}
  Dummy_temp<char,10> j(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>){return dummytempobj;}
};


template <class T, int I, class T2> class TPA {
public:
  void (*a())(){return 0;}
  int (*(*b(int,char))(float,int))(void){return 0;}
  char *c(int){return 0;}
  void ***d(char,short **(*)()){return 0;}
  short & e(int,...){return dummy_s;}
  int Dummy::*f(int,char Dummy::*){return dmptr;}
  float (*g(void))[10][20]{return 0;}
  Dummy h(Dummy,Dummy*,Dummy&){return dummyobj;}
  Dummy_type i(Dummy_type,Dummy_type*,Dummy_type&){return dummytypeobj;}
  Dummy_temp<char,10> j(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>){return dummytempobj;}
  T temp1(){return 0;}
  T2 (*temp2(T x))[I]{return 0;}
};

TPA <int,10,char> tpaobj;

void f(){
  static char Dummy::*dm1ptr;
  Dummy_temp<int,1> dummytempobj1;
  Dummy_temp<short,3> dummytempobj2;
  Dummy_temp<char,2> dummytempobj3;

  tpaobj.a();
  tpaobj.b(10, 'a');
  tpaobj.c(20);
  tpaobj.d('b', (short **(*)())0);
  tpaobj.e(30, 40, 50);
  tpaobj.f(50, dm1ptr);
  tpaobj.g();
  tpaobj.h(dummyobj,&dummyobj,dummyobj);
  tpaobj.i(dummytypeobj,&dummytypeobj,dummytypeobj);
  tpaobj.j(dummytempobj1,&dummytempobj2,dummytempobj3);
  tpaobj.temp1();
  tpaobj.temp2(10);
}


typedef  void (*TAA())();
typedef  int (*(*TAB(int,char))(float,int))(void);
typedef  char *TAC(int);
typedef  void ***TAD(char,short **(*)());
typedef  short & TAE(int,...);
typedef  int Dummy::*TAF(int,char Dummy::*);
typedef  float (*TAG(void))[10][20];
typedef  Dummy TAH(Dummy,Dummy*,Dummy&);
typedef  Dummy_type TAI(Dummy_type,Dummy_type*,Dummy_type&);
typedef  Dummy_temp<char,10> TAJ(Dummy_temp<int,1>,Dummy_temp<short,3>*,Dummy_temp<char,2>);

#include <stdio.h>
int main(){
  f();

  puts("ok");
}
