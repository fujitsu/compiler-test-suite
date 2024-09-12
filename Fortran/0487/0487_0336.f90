module m1
 implicit none
   TYPE e_type
      CONTAINS
      PROCEDURE,nopass :: eri_foreach=> eri_type_eri_foreach
   END TYPE 

 type x1
   integer::v1
 end type
 type,extends(x1)::x2
   integer::v2
 end type
 type,extends(x2)::x3
   integer::v3
 end type
contains
   SUBROUTINE eri_type_eri_foreach(fobj)
    CLASS(x1) :: fobj
     integer::k
      k=0
     select type(fobj)
     type is(x3)
        k=1
     end select
  if (k/=1) print *,102
   END SUBROUTINE eri_type_eri_foreach

 subroutine s( d )
  class(x1)::d
  integer::k
  k=0
  select type (d)
   type is (x3)
   k=1
  end select
  if (k/=1) print *,101
 end subroutine
end
use m1
type(e_type):: z
call z%eri_foreach( x3( v1=1 , v2=2 , v3=3 ) )
call s( x3( v1=1 , v2=2 , v3=3 ) )
print *,'pass'
end
