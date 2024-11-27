#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int test4(int i4001[], unsigned int u4001[], float r4001[], double r8001[], int init);
int val(int n);

#define M 100
int main()
{
  int          i4001[100],i4002[100],i4003[100],i,j,k;
  int          *i4p,*r4p;
  int          list1[100],list2[100];
  long int     l4001[100],l4002[100];
  unsigned int u4001[100],u4002[100],u4003[100],*u4p;
  float        r4001[100],r4002[100];
  double       r8001[100];

  u4p=&u4001[0];
  r4p=&r4001[0];

  for(i=0;i<100;l4001[i]=i%9,l4002[i]=i%6,i++);
  for(i=0;i<100;r4001[i]=i4003[i]=99-i,i++)
    i4001[i]=i4002[i]=r4002[i]=u4001[i]=i;

  printf(" *** test 1 *** \n");

  for(i=val(0),j=i,i4p=&i4001[0];i<M;i++)
  {
    if (i4002[i]&63>(val(48)&val(15)|val(2)))
      i4003[i] = *(u4p+j)|(int)(((i&(i-1))==i)?i4001[i]:r4001[i]);
    else
      i4003[i] = *(u4p+j)&(int)((i&(i+1))?i4001[i]:r4001[i]);
    u4002[i]=(j^i,j|i+1,j&i&M,val(i4003[i])|val(j++));
    u4003[i]=u4002[i]?u4002[i]:u4002[i]&i;
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",u4003[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 2 *** \n");

  for(i=val(4)&8;i<M;list1[i]=list2[i]=i,i+=1)
  {
    i4002[i] ^= (*(r4p+i)) & *(u4p+i) ;
    i4003[i] = i4002[i] + r4002[i&127] ;
    if (u4002[i]=i^M)
      r8001[i] = i4002[i] | i4003[i] ;
    else
      if (u4002[i]=i|M)
        r8001[i] = i4002[i] & i4003[i] ;
    i4002[i] &= *(i4p+val(i)) * (int)r8001[i]%(i+1);
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",i4002[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 3 *** \n");

  for(i=(M?M-1:M-100),j=(M-100?M:M-100),k=0;i>=0;i--,j++,k++)
  {
    u4001[i] = i4001[i]&i4001[j]|i4001[k]^
               i4001[list1[i]]&i4001[list1[j]]|i4001[list1[k]]^
               i4001[list2[i]]&i4001[list2[j]]|i4001[list2[k]]^
               i4002[i]&i4002[j]|i4002[k]^
               i4002[list1[i]]&i4002[list1[j]]|i4002[list1[k]]^
               i4002[list2[i]]&i4002[list2[j]]|i4002[list2[k]]^
               i4003[i]&i4003[j]|i4003[k]^
               i4003[list1[i]]&i4003[list1[j]]|i4003[list1[k]]^
               i4003[list2[i]]&i4003[list2[j]]|i4003[list2[k]];
    if (u4001[i]?0:1)
      u4002[i]=(int)r4001[i]^(int)r4001[j]|(int)r4001[k]&
               (int)r4001[list1[i]]^(int)r4001[list1[j]]|
               (int)r4001[list1[k]]&
               (int)r4001[list2[i]]^(int)r4001[list2[j]]|
               (int)r4001[list2[k]];
    else
      u4002[i]=(int)r4002[i]^(int)r4002[j]|(int)r4002[k]&
               (int)r4002[list1[i]]^(int)r4002[list1[j]]|
               (int)r4002[list1[k]]&
               (int)r4002[list2[i]]^(int)r4002[list2[j]]|
               (int)r4002[list2[k]];
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",u4002[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 4 *** \n");

  test4(i4001,u4001,r4001,r8001,list1[0]);

  for(i=0;i<100;i++)
    printf(" %5f %c ",r8001[i],(i%5==4||i==99)?'\n':' ') ;

  printf(" *** test 5 *** \n");

  for(i=0;i<M;i+=1)
  {
    l4001[i]=~i4001[i]^~i4002[i]&~(int)r4001[i];
    l4002[i]=~(~(~(~(~(~(~l4001[i])&i4001[i])|~i4002[i])&i4001[i]
          &~u4001[i])|~u4002[i]&~(i4001[i]|(int)r4001[i]))&l4001[i]);
  }

  for(i=0;i<100;i++)
    printf(" %ld %c ",l4002[i],(i%8==7||i==99)?'\n':' ') ;
    printf("\n");

exit (0);
}

int val(n)
int n;
{
  return(n);
}

int test4(i4001,u4001,r4001,r8001,init)
int          i4001[],init;
unsigned int u4001[];
float        r4001[];
double       r8001[];
{
  int i,j,k;
  for(i=init,j=i,k=i+j;k<M;i++,j+=2,k+=2)
  {
    r8001[i]=i4001[i]^(int)r4001[i]|u4001[i]&
             i4001[j]^(int)r4001[j]|u4001[j]&
             i4001[k]^(int)r4001[k]|u4001[k];
    if(r8001[i]&&r4001[j]?0:1)
      r8001[i] = (int)r8001[i]^u4001[i];
    else
      r8001[i] = (int)r8001[i]|u4001[i];
  }
}
