#include <stdio.h>
#include <stdlib.h>
struct id {
  int id ;
  int num ;
  struct id *nid ;
} ;
struct v {
  struct id *idp ;
} ;

struct v *foo( int c, struct v *vps )
{
  struct id *idp ;

  int i = 0 ; 

  for ( idp = vps->idp ; idp ; idp = idp->nid )
  {
    if (   idp->id  == 1 
        || idp->num == 2
        || idp->nid->id == 2
    )
      i ++ ;
  }
  return 0 ;
}
int main()
{
  struct v va ;

  va.idp  = 0 ;
  (void*)foo( 1, &va ) ;
  puts("ok") ;

  exit(0) ;
}
