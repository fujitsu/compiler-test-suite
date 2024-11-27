module m0
  type ::t1
    integer::d
    real::r1
  end type
end module

module m22
use m0
 private
end module m22

module m1
  type :: t1
    integer::a
  end type t1
end module m1

module m2
  use m1
  private
end module m2

module m3
  type :: t1
    integer::b
   contains
     procedure :: proc
  end type t1
contains
  subroutine proc(this)
    class(t1) :: this
    if(this%b.ne.12)print*,"102"
    print*,"pass"
  end subroutine proc
end module m3

module m4
  use m2
  use m3
  use m22
contains
  subroutine sub()
    type(t1), pointer :: p
    allocate(p)
    p%b =12
    call p%proc()
  end subroutine sub
end module m4

use m4
call sub
end

