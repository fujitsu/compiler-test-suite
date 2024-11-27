#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 100

struct st1 {
  int      i4001[100],i4002[100],i4003[100];
  int      list1[100],list2[100];
  long int l4001[100],l4002[100];
  float    r4001[100],r4002[100];
  double   r8001[100];
  unsigned int  u4001[100],u4002[100],u4003[100];
 } t;

int test4(struct st1 *tt);
int val(int n);
int main()
{
  int          i,j,k;
  int          *i4p,*r4p;
  unsigned int *u4p;
  struct st1 *pt = &t;

  u4p=&pt->u4001[0];
  r4p=(int*)&pt->r4001[0];

  for(i=0;i<100;pt->l4001[i]=i%9,pt->l4002[i]=i%6,i++);
  for(i=0;i<100;pt->r4001[i]=pt->i4003[i]=99-i,i++)
    pt->i4001[i]=pt->i4002[i]=pt->r4002[i]=pt->u4001[i]=i;

  printf(" *** test 1 *** \n");

  for(i=val(0),j=i,i4p=&pt->i4001[0];i<M;i++)
  {
    if (pt->i4002[i]&63>(val(48)&val(15)|val(2)))
      pt->i4003[i] = *(u4p+j)|(int)(((i&(i-1))==i)?pt->i4001[i]:pt->r4001[i]);
    else
      pt->i4003[i] = *(u4p+j)&(int)((i&(i+1))?pt->i4001[i]:pt->r4001[i]);
    pt->u4002[i]=(j^i,j|i+1,j&i&M,val(pt->i4003[i])|val(j++));
    pt->u4003[i]=pt->u4002[i]?pt->u4002[i]:pt->u4002[i]&i;
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",pt->u4003[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 2 *** \n");

  for(i=val(4)&8;i<M;pt->list1[i]=pt->list2[i]=i,i+=1)
  {
    pt->i4002[i] ^= (*(r4p+i)) & *(u4p+i) ;
    pt->i4003[i] = pt->i4002[i] + pt->r4002[i&127] ;
    if (pt->u4002[i]=i^M)
      pt->r8001[i] = pt->i4002[i] | pt->i4003[i] ;
    else
      if (pt->u4002[i]=i|M)
        pt->r8001[i] = pt->i4002[i] & pt->i4003[i] ;
    pt->i4002[i] &= *(i4p+val(i)) * (int)pt->r8001[i]%(i+1);
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",pt->i4002[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 3 *** \n");

  for(i=(M?M-1:M-100),j=(M-100?M:M-100),k=0;i>=0;i--,j++,k++)
  {
    pt->u4001[i] = pt->i4001[i]&pt->i4001[j]|pt->i4001[k]^
               pt->i4001[pt->list1[i]]&pt->i4001[pt->list1[j]]|pt->i4001[pt->list1[k]]^
               pt->i4001[pt->list2[i]]&pt->i4001[pt->list2[j]]|pt->i4001[pt->list2[k]]^
               pt->i4002[i]&pt->i4002[j]|pt->i4002[k]^
               pt->i4002[pt->list1[i]]&pt->i4002[pt->list1[j]]|pt->i4002[pt->list1[k]]^
               pt->i4002[pt->list2[i]]&pt->i4002[pt->list2[j]]|pt->i4002[pt->list2[k]]^
               pt->i4003[i]&pt->i4003[j]|pt->i4003[k]^
               pt->i4003[pt->list1[i]]&pt->i4003[pt->list1[j]]|pt->i4003[pt->list1[k]]^
               pt->i4003[pt->list2[i]]&pt->i4003[pt->list2[j]]|pt->i4003[pt->list2[k]];
    if (pt->u4001[i]?0:1)
      pt->u4002[i]=(int)pt->r4001[i]^(int)pt->r4001[j]|(int)pt->r4001[k]&
               (int)pt->r4001[pt->list1[i]]^(int)pt->r4001[pt->list1[j]]|
               (int)pt->r4001[pt->list1[k]]&
               (int)pt->r4001[pt->list2[i]]^(int)pt->r4001[pt->list2[j]]|
               (int)pt->r4001[pt->list2[k]];
    else
      pt->u4002[i]=(int)pt->r4002[i]^(int)pt->r4002[j]|(int)pt->r4002[k]&
               (int)pt->r4002[pt->list1[i]]^(int)pt->r4002[pt->list1[j]]|
               (int)pt->r4002[pt->list1[k]]&
               (int)pt->r4002[pt->list2[i]]^(int)pt->r4002[pt->list2[j]]|
               (int)pt->r4002[pt->list2[k]];
  }

  for(i=0;i<100;i++)
    printf(" %5d %c ",pt->u4002[i],(i%8==7||i==99)?'\n':' ') ;

  printf(" *** test 4 *** \n");


    test4(pt);

  for(i=0;i<100;i++)
    printf(" %5f %c ",pt->r8001[i],(i%5==4||i==99)?'\n':' ') ;

  printf(" *** test 5 *** \n");

  for(i=0;i<M;i+=1)
  {
    pt->l4001[i]=~pt->i4001[i]^~pt->i4002[i]&~(int)pt->r4001[i];
    pt->l4002[i]=~(~(~(~(~(~(~pt->l4001[i])&pt->i4001[i])|~pt->i4002[i])&pt->i4001[i]
          &~pt->u4001[i])|~pt->u4002[i]&~(pt->i4001[i]|(int)pt->r4001[i]))&pt->l4001[i]);
  }

  for(i=0;i<100;i++)
    printf(" %ld %c ",pt->l4002[i],(i%8==7||i==99)?'\n':' ') ;
    printf("\n");

exit (0);
}

int val(n)
int n;
{
  return(n);
}


int test4(tt)

struct st1 *tt;
{
  int i,j,k;
  int init = tt->list1[0];
  for(i=init,j=i,k=i+j;k<M;i++,j+=2,k+=2)
  {
    tt->r8001[i]=tt->i4001[i]^(int)tt->r4001[i]|tt->u4001[i]&
             tt->i4001[j]^(int)tt->r4001[j]|tt->u4001[j]&
             tt->i4001[k]^(int)tt->r4001[k]|tt->u4001[k];
     if(tt->r8001[i]&&tt->r4001[j]?0:1)
      tt->r8001[i] = (int)tt->r8001[i]^tt->u4001[i];
    else
      tt->r8001[i] = (int)tt->r8001[i]|tt->u4001[i];
  }
}

