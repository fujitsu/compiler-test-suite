#include <stdio.h>

int main()
{
  struct f90str1 {
    int k4;
  };
  
  struct f90str2 {
    int k4;
  };

  struct f90str1 *v_x, *v_p;
  struct f90str2 v_i;
  int i;

  v_p = (struct f90str1 *)(&v_i);
  v_x = v_p;

  v_i.k4 = 1;

  for (i=1; i<=10; i++) {
    v_i.k4 = (*v_x).k4 + i;
  }

  if ( v_i.k4 != 56 )
    printf("** ng **\n");
  else 
    printf("** ok **\n");
}
