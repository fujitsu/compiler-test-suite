module m1
  type :: t1
    integer::a
   contains
     procedure :: proc=>f2
 end type t1
 contains
  subroutine f2(this)
    class(t1) :: this
    if(this%a.ne.13)print*,"103"
    this%a = this%a +1
  end subroutine 
end module m1

module m2
  use m1
  private
end module m2
module m5
  use m1
end module m5

module m3
  type :: t1
    integer::b
   contains
     procedure :: proc
  end type t1
contains
  subroutine proc(this)
    class(t1) :: this
    this%b = this%b +1
  end subroutine proc
end module m3

module m4
contains
  subroutine su(p,p2)
  use m2
  use m3
  use m5,t2=>t1
    type(t1), pointer :: p
    type(t2), pointer :: p2
    allocate(p)
    allocate(p2)
    p%b =12
    p2%a =13
    call p%proc()
    if(p%b.ne.13)print*,"111"
    call p2%proc()
    if(p2%a.ne.14)print*,"112"
    call proc(p)
    if(p%b.ne.14)print*,"113"
  end subroutine
  subroutine sub()
  use m2
  use m3
  use m5,t2=>t1
    type(t1), pointer :: p
    type(t2), pointer :: p2
    allocate(p)
    allocate(p2)
    p%b =12
    p2%a =13
    call p%proc()
    if(p%b.ne.13)print*,"111"
    call p2%proc()
    if(p2%a.ne.14)print*,"112"
    call proc(p)
    if(p%b.ne.14)print*,"113"
  end subroutine sub
end module m4

use m4
  use m2
  use m3
  use m5,t2=>t1
    type(t1), pointer :: p
    type(t2), pointer :: p2
    allocate(p)
    allocate(p2)
    p%b =12
    p2%a =13
    call p%proc()
    if(p%b.ne.13)print*,"111"
    call p2%proc()
    if(p2%a.ne.14)print*,"112"
    call proc(p)
    if(p%b.ne.14)print*,"113"
call sub
call su(p,p2)
    print*,"pass"
end
