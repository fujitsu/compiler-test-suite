#include <stdio.h>
#define ANSaa (725)
#define ANSv2 (4)
#define ANSv3 (4)
#define ANSallv3 (2344)
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
  int v2=2,v3[NN];
  int a[NN];
  int aa=0;
  int allv3 = 0;

  init (v3, NN, 3);

  for (j=NN-1;j>10;j--)
    {
      a[j] = j;
    }

  if (i<=l) v2=4;

  v3[0]=v2;

  for (j=NN-1;j>10;j--)
    {
      aa += a[j];
    }

  for (j=0;j<NN;j++)
    {
      allv3 = allv3 + v3[j];
    }

  if (aa == ANSaa &&
      v2 == ANSv2 &&
      v3[0] == ANSv3)
      allv3 == ANSallv3 &&
    printf("OK\n");
  else
    printf("NG\n");

}

int main()
{
  func ();
  return 0;
}
