 class R3{ 
 public: 
    static const int d=3; 
 }; 

 template<class Rd> 
 void test(Rd Q[Rd::d][Rd::d+1]) 
 { 
    return; 
 } 

#include <cstdio>

 int main() 
 { 
     R3 Q[3][4]; 

     test<R3>(Q);
     printf("tested\n");
     return 0; 
 } 

