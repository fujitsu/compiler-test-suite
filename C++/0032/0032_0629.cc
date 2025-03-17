













#include <stdio.h>

class A {
  char c;
};
int main()
{
  char     *n1 = new char;
  char    **n2 = new char *;
  
  
  
  char    **n3 = new char * ;  
  char A::**n4 = new char A :: *;
  char A::**n5 = new char A :: * ;
  char     *n6 = new char [100];
  char     *n7 = new (char);
  char     *n8 = :: new char;

  delete n1;
  delete n2;
  delete n3;
  delete n4;
  delete n5;
  delete [] n6;
  delete n7;
  delete n8;

  printf("ok\n");
}
