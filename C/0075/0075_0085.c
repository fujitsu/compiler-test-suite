
#include  <stdio.h>
int func2(int base, int n);
int func1(int base,int n);
int getbase();
int main()
{
  int x,y;
 printf("START \n");

 if ((x=func1(getbase(),10)) == (y=func2(getbase(),10)))
    printf("OK\n");
 else
    printf("NG x= %d y=%d \n",x,y);

 printf("END \n");
}

int func1(base,n)
int base,n;
{
  void get_ans();
  int x;
  int ret =0;

  for (x=0; x<n; x++,base+=base);
  get_ans(&ret,base);

  return ret;
}

int func2(base,n)
int base,n;
{
int ret = 0;
 return func1(base,n);
}

void get_ans(x,y)
int *x;
int y;
{
  *x = ++y;
  *x = ++(*x);
  return;
}

int getbase(){return 1;}
