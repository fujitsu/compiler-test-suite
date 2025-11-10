#include <cstdio>
#include <cstddef>


void test1()
{
  bool b1 = NULL;               



  char c1 = NULL;               
  
  

  short s1 = NULL;              
  
  

  int i1 = NULL;                
  
  

  long l1 = NULL;               
  
  

  long long ll1 = NULL;         
  
  

  float f1 = NULL;              
  
  

  double d1 = NULL;             
  
  

  long double ld1 = NULL;       
  
  
}



void test2()
{
  std::nullptr_t nt1 = nullptr; 
  std::nullptr_t nt2 = 0;       
  
}


void test3()
{
  std::nullptr_t nt = 0;       

  char *cp;
  cp = true ? 0 : nullptr;
  cp = true ? nullptr : 0;
  cp = true ? nullptr : nullptr; 
}

template <typename T> void f(T *t){
}

void test4()
{
  int *ip = nullptr;
  f(ip);        
  f((char*)nullptr);    
  
}

int main()
{
  test1();
  test2();
  test3();
  test4();

  printf("ok\n");

  return 0;
}
