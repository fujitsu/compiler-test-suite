#include <stdio.h>
#define ANSaa (725)
#define ANSv2 (4)
#define ANSv3 (4)
#define NN (40)

static void
init (int* restrict val, int n, int seed)
{
  int i;

  for (i = 0; i < n; i++)
    {
      val[i] = i * seed;
    }
}

static void
func (void)
{
  int i=0,j=0,l=0;
  int v2=2,v3=3;
  int a[NN];
  int aa=0;

  init (a, NN, 3);

  for (j=NN-1;j>10;j--)
    {
      a[j] = j;
    }

  if (i<=l) v2=4;

  v3=v2;

  for (j=NN-1;j>10;j--)
    {
      aa += a[j];
    }

  if (aa == ANSaa && v2 == ANSv2 && v3 == ANSv3)
    printf("OK\n");
  else
    printf("NG\n");

}

int main()
{
  func ();
  return 0;
}
