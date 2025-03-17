#include <stdio.h>
#define ANSaa (725)
#define ANSv2 (2)
#define ANSv3 (2)
#define ANSallv2 (1560)
#define ANSallv3 (2340-1)
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
  int v2[NN],v3[NN];
  int a[NN];
  int aa=0;
  int allv2 = 0, allv3 = 0;

  init (v2, NN, 2);
  init (v3, NN, 3);

  for (j=NN-1;j>10;j--)
    {
      a[j] = j;
    }

  v3[1]=100;

  if (i<=l) v3[1]=v2[1];

  for (j=NN-1;j>10;j--)
    {
      aa += a[j];
    }

  for (j=0;j<NN;j++)
    {
      allv2 = allv2 + v2[j];
      allv3 = allv3 + v3[j];
    }

  if (aa == ANSaa &&
      v2[1] == ANSv2 &&
      v3[1] == ANSv3 &&
      allv2 == ANSallv2 &&
      allv3 == ANSallv3)
    printf("OK\n");
  else
    printf("NG\n");

}

int main()
{
  func ();
  return 0;
}
