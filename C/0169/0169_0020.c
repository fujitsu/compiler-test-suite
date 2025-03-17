#include <stdio.h>
union  tag_u {
             int       mi ;
             short int msi ;
             }  ;

long int f_li() { return 1 ; }

union  tag_u f_union()
{
  union tag_u w ;
  w.mi = 1 ;
  return w ;
}
int main()
{
  long int               li    ;
  union  tag_u           v_union  ;
  
  li    = f_li()    ;
  v_union  = f_union()  ;

  printf("%d\n",li);
}



