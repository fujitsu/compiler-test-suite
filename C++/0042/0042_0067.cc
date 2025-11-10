
extern "C" int printf(const char*,...);
extern "C" int puts(const char*);

int main()
{
  
  
  puts("xxx");
  alignas(16) char ca[12];
  alignas(16) long long la[10];
  
  
  

  constexpr int n = alignof(int);
  printf("n1: %d\n", n);

  constexpr int n2 = alignof(ca);
  printf("n2: %d\n", n2);

  constexpr int n3 = alignof(la);
  printf("n3: %d\n", n3);

  
  


  

  printf("float: %d\n", alignof(float));
  printf("double: %d\n", alignof(double));
  printf("int: %d\n", alignof(int));

  la[0]=-1;
  la[1]=1;
  la[2]=-1;
  la[3]=1;
  la[4]=-1;
  la[5]=1;
  la[6]=-1;
  la[7]=1;
  la[8]=-1;
  la[9]=1;

}

