 module m2
  integer::z
  type :: t1
  end type t1
  private
  public::z
end 

module m3
  type :: t1
    integer::z
   contains
     procedure :: proc
     generic::operator (+)=>proc
  end type t1
contains
  function   proc(this,in) result(r)
    class(t1),intent(in) :: this
    integer,intent(in)::in
    logical::r
    r=this%z/=in
  end 
end module m3

module m4
contains
subroutine s(p)
  use m2
  use m3
    type(t1) :: p

    p%z=    1
    if (p+1) print *,191
end
end
use m4
  use m2
  use m3
    type(t1) :: p

    p%z=    1
    if (p+1) print *,191

print *,'pass'
end
