module m
  type ty
    integer,pointer :: p=>null()
    procedure(),pointer,nopass :: pp1=>null()
    procedure(integer),pointer,nopass :: pp2=>null()
    procedure(sin),pointer,nopass :: pp3=>null()
    procedure(sub),pointer,nopass :: pp4=>null()
  end type
contains
  subroutine sub
  end subroutine
end module

use m
type(ty) :: t
if (associated(t%p)) print *,1
if (associated(t%pp1)) print *,2
if (associated(t%pp2)) print *,3
if (associated(t%pp3)) print *,4
if (associated(t%pp4)) print *,5
print *,'pass'
end
