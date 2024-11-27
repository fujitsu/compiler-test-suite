#include <stdlib.h>
#include <stdio.h>
#include <math.h>
void sub();
int main()
{
int i,j,count=0;
sub(&j);

for(i=0;i!=j+4;i++)
  count++;

 for(i=0;i<100;count++)
  i++;

 for(i=0;i!=100;i+=2)
  count++;

 for(i=2147483646;i<=2147483647;i++)
  {if(count>2000){break;}
   count++;
exit (0);
  }

 for(i=1;i<j;i++)
  count++;

 for(i=0;i>10;i++)
  count++;

 for(i=0;i<100;i+=j)
  count++;

 for(i=-100;i<2147483646;i++)
   {if(count>10000) break;
     count++;
   } 

 for(i=0;i<100;i++)
  if(count==10000){i++;}
              else{count++;}

 for(i=0;i<j;i++)
  if(count==10000){j++;}
              else{count++;}
printf("%d %d ", i,count);
} 
void sub(int *p)
{
  *p=10;
}

