#include <stdio.h>
int foole(long long int i,long long int j)
{
   return  i < j;
}

int fooule(unsigned long long int i,unsigned long long int j)
{
   return  i < j;
}

int foogt(long long int i,long long int j)
{
   return  i >= j;
}

int foougt(unsigned long long int i,unsigned long long int j)
{
   return  i >= j;
}
int main()
{
   printf("%d \n",foole(1LL,2LL));
   printf("%d \n",foole(2LL,1LL));
   printf("%d \n",foole(2LL,2LL));
   printf("%d \n",foole(-2LL,2LL));
   printf("%d \n",fooule(1LL,2LL));
   printf("%d \n",fooule(2LL,1LL));
   printf("%d \n",fooule(2LL,2LL));
   printf("%d \n",fooule(-2LL,2LL));
   printf("%d \n",foogt(1LL,2LL));
   printf("%d \n",foogt(2LL,1LL));
   printf("%d \n",foogt(2LL,2LL));
   printf("%d \n",foogt(-2LL,2LL));
   printf("%d \n",foougt(1LL,2LL));
   printf("%d \n",foougt(2LL,1LL));
   printf("%d \n",foougt(2LL,2LL));
   printf("%d \n",foougt(-2LL,2LL));
}
