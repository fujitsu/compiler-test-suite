#include <stdio.h>

void hanoi(int n, int a, int b, int c);
int  move[7],from[7],to[7],i=0;
int main()
{
  printf(" START \n");
  hanoi(3, 'a', 'b', 'c');
  if(move[0]==1 && from[0]=='a' && to[0]=='b' &&
     move[1]==2 && from[1]=='a' && to[1]=='c' &&
     move[2]==1 && from[2]=='b' && to[2]=='c' &&
     move[3]==3 && from[3]=='a' && to[3]=='b' &&
     move[4]==1 && from[4]=='c' && to[4]=='a' &&
     move[5]==2 && from[5]=='c' && to[5]=='b' &&
     move[6]==1 && from[6]=='a' && to[6]=='b'   )
    printf(" END : OK  \n");
  else
    printf(" END : NG  \n");
}
 
void hanoi(int n, int a, int b, int c)
{
  if(n==1)
  {
    move[i]=n; from[i]=a; to[i]=b; i++;
    printf(" MOVE %d FROM %c TO %c \n",n,a,b);
  }
  else
  {
    hanoi(n-1,a,c,b);
    move[i]=n; from[i]=a; to[i]=b; i++;
    printf(" MOVE %d FROM %c TO %c \n",n,a,b);
    hanoi(n-1,c,b,a);  
  }
}
