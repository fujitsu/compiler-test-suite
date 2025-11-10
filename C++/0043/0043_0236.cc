


#include <iostream>
#include <typeinfo>
#include <cxxabi.h>

char* demang(const char* mangname)
{
  int status;
  return abi::__cxa_demangle(mangname, 0, 0, &status);
}



const int* bar(){
  return new int[0];
}

struct A{
  double x;
};

template <class T> T tFoo(const T& t){
  return t;
}

struct Foo {
  
  template <typename T, typename U>
  static decltype((*(T*)0) * (*(U*)0)) foo(const T& arg1, const U& arg2){
    return arg1 * arg2;
  }
  
  
  
  template <typename T, typename U>
  static auto foo2(T arg1, U arg2)->decltype(arg1 * arg2) {
    return arg1 * arg2;
  }
};

template <typename T, typename U>  struct Bar{
    typedef decltype((*(T*)0) + (*(U*)0)) btype;
    static btype bar(T t, U u);
};

struct Rod1{};
struct Rod2{
  
  Rod1 operator*(double) { Rod1 rod; return rod; }
};


auto func()->decltype(false);

bool func(){
  return false;
}

Rod2 rod2;

auto main()->decltype(0)
{
    int i = 4;
    const int j = 6;
    const int& k = i;
    int a[5];
    int *p;
    A obj;

    decltype(i) var1;            
    decltype(1) var2;            
    decltype(2+3) var3;          
    decltype(i=1) var4 = i;      
                                 
    decltype((i)) var5 = i;      
    decltype(((i))) var5_1 = var5;      
    decltype(j) var6 = 1;        
    decltype(k) var7 = j;        
    decltype("decltype") var10 = "decltype";     
    decltype(a) var8;            
    decltype(a[3]) var9 = i;     
    decltype(*p)  var11 = i;     
    decltype(tFoo(A())) var12;   
    decltype(func()) var13;      
    decltype((func())) var14;    
    decltype(func)  var15;       
    decltype(&func) var16;       
    decltype(&A::x) var17;       
    decltype(obj.x) var17_1;       
    decltype(Foo::foo(3.0, 4u))  var18;	             
    decltype(Foo::foo2(3.0, 4u))  var18_1;           
    Rod2 rod2;
    decltype(Foo::foo2<Rod2, double>(rod2, 0.0))  var18_2;           
    decltype(Bar<float, short>::bar(1,3)) var19;     

    using namespace std;

    cout << "type of var1 = "    << demang(typeid(var1).name()) << endl;
    cout << "type of var2 = "    << demang(typeid(var2).name()) << endl;
    cout << "type of var3 = "    << demang(typeid(var3).name()) << endl;
    cout << "type of var4 = "    << demang(typeid(var4).name()) << endl;

    cout << "type of var5 = "    << demang(typeid(var5).name()) << endl;
    cout << (typeid(var5) == typeid(var5_1) ? "OK int&" : "NG") << endl;
    cout << "type of var6 = "    << demang(typeid(var6).name()) << endl;
    cout << "type of var7 = "    << demang(typeid(var7).name()) << endl;
    cout << endl;
    cout << "type of var10 = "   << demang(typeid(var10).name()) << endl;
    cout << endl;
    cout << "type of var8 = "    << demang(typeid(var8).name()) << endl;
    cout << "type of var9 = "    << demang(typeid(var9).name()) << endl;
#if 1
    if (typeid(var3) == typeid(var9))
      cout << "types of var3 and var9 are the same." << endl;
    else
      cout << "types of var3 and var9 are different." << endl;
#endif
#if 1
    if (typeid(var3) == typeid(var11))
      cout << "types of var3 and var11 are the same." << endl;
    else
      cout << "types of var3 and var11 are different." << endl;
#endif
    cout << endl;
    cout << "type of var11 = "   << demang(typeid(var11).name()) << endl;
    cout << "type of var12 = "   << demang(typeid(var12).name()) << endl;
    cout << "type of var13 = "   << demang(typeid(var13).name()) << endl;
    cout << "type of var14 = "   << demang(typeid(var14).name()) << endl;
    cout << "type of var15 = "   << demang(typeid(var15).name()) << endl;
    cout << "type of var16 = "   << demang(typeid(var16).name()) << endl;
    cout << "type of var17 = "   << demang(typeid(var17).name()) << endl;
    cout << "type of var17_1 = "   << demang(typeid(var17_1).name()) << endl;
    cout << "type of var18 = "   << demang(typeid(var18).name()) << endl;
    cout << "type of var18_1 = " << demang(typeid(var18_1).name()) << endl;
    cout << "type of var18_2 = " << demang(typeid(var18_2).name()) << endl;
    cout << "type of var19 = "   << demang(typeid(var19).name()) << endl;
    cout << Foo::foo(3.0, 4u) << endl;
    return 0;
}
