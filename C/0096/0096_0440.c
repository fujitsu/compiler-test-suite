#include  <stdio.h>

int main()
{
#ifdef __STDC__
   int a[10],b[10],i,j,func(int i);
#else
   int a[10],b[10],i,j,func();
#endif

   
   for(i=0;i<10;a[i]=i,i++);
   for(i=0;i<10;i++){
      b[i]=func(a[i]);
      if(b[i]+a[i]!=10)
         printf("***  <%2d> NG ***\n",i);
      else
         printf("***  <%2d> OK ***\n",i);
   }
}
#ifdef __STDC__
int func(int i)
#else
func(i)
  int i;
#endif
{
   return(10-i);
}
