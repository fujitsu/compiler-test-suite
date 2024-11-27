#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int i,l,m,n=1;
  int i4001[100],i4002[100],i4003[100],i4004[100];
  static double r8001[100];

  for(i=0;i<100;i4004[i]=i4003[i]=0,i++)
    i4001[i]=i4002[i]=r8001[i] = i;

  l = 10 * 1 - 10;
  for(i=0;i<6;n*=2,i++);
  m = l + 1 ;

  printf("%d %d %d \n",l,n,m);

  for(i=l;i<n;i+=m)
    if (i4001[i]==i4002[i] && i4001[i]==i)
    {
      i4003[i] = l + m + n;
      if (!(i4001[i]-i))
      {
        i4003[i] *= i4002[i];
        if ((0.5+sin(r8001[i])) || (0.5+cos(r8001[i])))
         {i4003[i] *= i4002[i] + i4004[i4001[i]]; }
      }
    }
    else
      i4003[i] = 1;

    printf("\n");
    for(i=0;i<n;i++) printf("%c%7d%c ",' ',i4003[i],(i%5==4||i==n-1) ?
                      '\n' : ' ');
  for(i=0;i<100;i++)
  {
    if (i4001[0]==0&&i4001[i])
      if (i4002[i]==0||i4002[1]==i||i4002[i]==2||i4002[3]==i||
          i4002[i]==4||i4002[5]==i||i4002[i]==6||i4002[7]==i||
          i4002[i]==8||i4002[9]==i)
        if (i4004[i]==0)
          if (i4001[i4002[i]]==i4002[i4001[i]]||
              i4001[i4002[i4001[i]]]==i4002[i4001[i4002[i]]]||
              i4001[i]==i4002[i]||
              i4002[i4001[i4001[i]]]==i4001[i])
            i4003[i] = i;
  }
    printf("\n");
    for(i=0;i<100;i++)printf("%c%7d%c",' ',i4003[i],(i%5==4||i==n-1)?
                      '\n' : ' ');
    printf("\n");
exit (0);
}
