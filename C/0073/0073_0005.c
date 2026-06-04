#include <stdlib.h>
#include <stdio.h>

typedef unsigned int *pset;

extern int func()
{
  register int i, var;
  pset *F_cube_table;
    
  for(i=1; i < 100; i++ ){
    F_cube_table = ((pset *) malloc(sizeof(pset) * 4 ));
    ((F_cube_table) ? (free((char *) (F_cube_table)), (F_cube_table) = 0) : 0);
  }
  return i;
}

int main()
{
   int    result;
   result = func();
   if( result == 100 )
     printf("OK \n");
   else
     printf("NG \n");

}
