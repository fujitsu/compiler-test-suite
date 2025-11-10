extern "C" int puts(const char*);


struct X {
#if 1
  void p() &  
  
  
  
  {
    puts("p() &");
  }
#endif

  void p() && 
  
  
  
  {
    puts("p() &&");
  }
};


int main()
{
  X x;

  x.p();   
  X().p(); 
}
