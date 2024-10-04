#include<stdio.h>
  struct tag {int a;int b;}st;
int main()
  {
printf("*** \n");
{
  int i=2,*a;
  int *f(),*g(),*(*w)();
  w = (i==2)?f:g;
  *w();
}
{
  int i=2;
  struct tag *h(),*(*j)();
  struct tag *k();
  j = (i==2)?h:k;
  *j();
}
printf("*** \n");
}
int *f()
{
	static int a;
    printf("*** \n");
	return &a;
}
int *g()
{
	static int a;
    printf("*** \n");
	return &a;

}
struct tag *h()
{
	static struct tag a;
    printf("*** \n");
	return &a;
}
struct tag *k()
{
	static struct tag a;
    printf("*** \n");
	return &a;

}
