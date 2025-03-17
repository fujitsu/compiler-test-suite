#include <stdio.h>
#include <string.h>

char *ic4 = "1";

char *func04 (char f4a, char f4b, char f4c[5], char f4d[5])
{
  printf (" no.2 \n");
  return (ic4 = "a");
}

void func03 (long f3a, long f3b)
{
  static
    char i4a = 'a', i4b = 'z',
    i4c[5] = "1234",
    i4d[5] = "0123";
  printf ("func04= %s\n", func04 (i4a, i4b, i4c, i4d));
  printf (" no.1 \n");
  if (strcmp (ic4, "a") != 0)
    printf ("func04 => func03");
}
int main()
{
  func03(0x1e,100);
}
