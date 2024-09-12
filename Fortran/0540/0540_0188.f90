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
     generic::assignment(=)=>proc
  end type t1
contains
  subroutine proc(this,in)
    class(t1),intent(out) :: this
    integer,intent(in)::in
    this%z=in
  end subroutine proc
end module m3

module m4
contains
subroutine s(p)
  use m2
  use m3
    type(t1) :: p

    p=    1
    if (p%z/=1) print *,191
end
end
  use m2
  use m3
use m4
    type(t1) :: p

    p=    1
    if (p%z/=1) print *,191
call s(p)

print *,'pass'
end
