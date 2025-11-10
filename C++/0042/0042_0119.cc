extern "C" int printf(const char*, ...);


int value = 10;
int & lvr = value; 



int main()
{
  int && rvr = 1;    
  rvr = 2;
  rvr++;


  printf("%d\n", lvr);
  printf("%d\n", rvr);
}

