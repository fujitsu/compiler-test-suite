template<class T> class TAG {};
TAG<int> tagobj;

template<class T, int i> class TAG1 {};
TAG1<short,1> tag1obj;

template<class T> class TAG2 {
 public:
   template <class T2, int i> class TAG21 {
   public:
     template <class T3, int ii> class TAG22{
     };
   };
}; 
TAG2<long> tag2obj;
TAG2<float>::TAG21<unsigned int,2> tag21obj;
TAG2<bool>::TAG21<long,3>::TAG22<double,3> tag22obj;

struct SG {
  TAG<int>	func(TAG<int>);
  TAG<int>	func(TAG<float>, TAG<bool>*);
  TAG<int>	func(TAG<long long>,...);

  TAG1<short,1>	func(TAG1<int,1>);
  TAG1<short,1>	func(TAG1<double,1>, TAG1<short,2>*);
  TAG1<short,1>	func(TAG1<wchar_t,1>,...);

  TAG2<long>	func(TAG2<short>);
  TAG2<long>	func(TAG2<wchar_t>, TAG2<char>*);
  TAG2<long>	func(TAG2<double>,...);

  TAG2<float>::TAG21<unsigned int,2>
	func(TAG2<short>::TAG21<long,1>);
  TAG2<float>::TAG21<unsigned int,2>
	func(TAG2<wchar_t>::TAG21<int,1>, TAG2<unsigned long>::TAG21<float,2>*);
  TAG2<float>::TAG21<unsigned int,2>
	func(TAG2<int>::TAG21<short,1>,...);

  TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	func(TAG2<short>::TAG21<long,1>::TAG22<int,30>);
  TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	func(TAG2<wchar_t>::TAG21<int,1>::TAG22<short,30>, TAG2<unsigned long>::TAG21<float,2>::TAG22<bool,30>*);
  TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	func(TAG2<int>::TAG21<short,1>::TAG22<float,30>,...);
}sgobj;
TAG<int>	SG::func(TAG<int>) {return tagobj;}
TAG<int>	SG::func(TAG<float>, TAG<bool>*) {return tagobj;}
TAG<int>	SG::func(TAG<long long>,...) {return tagobj;}

TAG1<short,1>	SG::func(TAG1<int,1>) {return tag1obj;}
TAG1<short,1>	SG::func(TAG1<double,1>, TAG1<short,2>*) {return tag1obj;}
TAG1<short,1>	SG::func(TAG1<wchar_t,1>,...) {return tag1obj;}

TAG2<long>	SG::func(TAG2<short>) {return tag2obj;}
TAG2<long>	SG::func(TAG2<wchar_t>, TAG2<char>*) {return tag2obj;}
TAG2<long>	SG::func(TAG2<double>,...) {return tag2obj;}

TAG2<float>::TAG21<unsigned int,2>
	SG::func(TAG2<short>::TAG21<long,1>) {return tag21obj;}
TAG2<float>::TAG21<unsigned int,2>
	SG::func(TAG2<wchar_t>::TAG21<int,1>, TAG2<unsigned long>::TAG21<float,2>*) {return tag21obj;}
TAG2<float>::TAG21<unsigned int,2>
	SG::func(TAG2<int>::TAG21<short,1>,...) {return tag21obj;}

TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	SG::func(TAG2<short>::TAG21<long,1>::TAG22<int,30>) {return tag22obj;}
TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	SG::func(TAG2<wchar_t>::TAG21<int,1>::TAG22<short,30>, TAG2<unsigned long>::TAG21<float,2>::TAG22<bool,30>*) {return tag22obj;}
TAG2<bool>::TAG21<long,3>::TAG22<double,3>
	SG::func(TAG2<int>::TAG21<short,1>::TAG22<float,30>,...) {return tag22obj;}

#include <stdio.h>
int main(){
  puts("ok");
}
