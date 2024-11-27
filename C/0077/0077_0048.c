#include <stdio.h>

void test1()
{
  int    i ;
  short  s ;
  char   c ;

  i = 32768;    


  s = i ; 
  c = i ;

  printf("%d %x\n", c, c);          
  printf("%d %x\n", s, s);          
}

void test2()
{
  signed int    si ;
  signed short  ss ;
  signed char   sc ;
  unsigned int    ui ;
  unsigned short  us ;
  unsigned char   uc ;

  uc = 0x81U ;
  us = 0x8001U ;
  ui = 0x80000001U ;
  

  sc = uc ;
  ss = us ;
  si = ui ;

  printf("%d %x\n", sc, sc);          
  printf("%d %x\n", ss, ss);          
  printf("%d %x\n", si, si);          
}

int main()
{
  test1();
  test2();
  return 0;
}
