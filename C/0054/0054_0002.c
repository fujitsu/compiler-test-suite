#include <stdio.h>

char a[15]="abcdefghijklmn";
int main()
{
      printf(" 08 START\n");
  {
    char c;
    char *p; p = a;
    c = *(p+sizeof("abcdefg")-2);
    if (c == 'g')
      printf(" 08-1 OK \n");
    else
      printf(" 08-1 NG \n");
  }
  {
    struct tag { int a;
                  int b;
                  };
    struct tag *p;int i;
    static struct tag x[10];
    x[7].a=100; p=x;
    i = (*(p+(unsigned)10+(int)0xfffffffd)).a;
    if (i == 100)
      printf(" 08-2 OK \n");
    else
      printf(" 08-2 NG \n");
  }
      printf(" 08 END  \n");
}
