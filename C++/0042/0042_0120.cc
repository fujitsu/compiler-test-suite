extern "C" int printf(const char*, ...);


int main()
{
  int a = 1, b = 2, c = 3, d = 4;
  int && rvr = a + b;    
  printf("1: %d\n", rvr);  

  

  

  rvr = a;
  
  printf("rav:%d\n", *((int*)(&rvr)));
}
