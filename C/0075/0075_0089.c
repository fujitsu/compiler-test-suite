#include <stdio.h>
int b;
void *sub2()
{
  printf("  NG\n");
}

void *sub1(pa)
  int pa;
{
  if (pa) {
    sub2();
    goto label1;
  } else {
    b = 1;
    goto label2;
  }
 label1: ; 
  while (1);
 label2: ; 
}
int main()
{
  int a,c;
  a=b=0;
  sub1(a);
  c=a+b;
  if ( c == 1 ) {
    printf(" OK\n");
  } else {
    printf(" NG\n");
  }
}


