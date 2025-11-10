#include <cstdio>

inline namespace B {

  inline namespace V1 {
    const char *func() {return "B::V1";}
  }

  inline namespace C {
	   inline namespace V2 {
	     const char *func() {return "B::C::V2";}
	   }
  }

}



int main()
{
  printf("%s\n", B::V1::func());
  printf("%s\n", V1::func());
  printf("%s\n", B::C::V2::func());
  
  printf("%s\n", C::func());
  
}
