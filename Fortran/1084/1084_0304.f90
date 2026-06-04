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
  type:: t1
    integer::b
   contains
     procedure :: proc
  end type t1
  type,extends(t1) :: t0
  end type
contains
  subroutine proc(this, a)
    class(t1) :: this
    integer::a
    if(a.ne.12)print*,"101"
    select type(a=>this)
     type is(t0)
         print*,"301"
     type is(t1)
        if(this%b.ne.12)print*,"102"
        this%b =23
      select type(a=>this)
        type is(t1)
        if(this%b.ne.23)print*,"111"
        type is(t0)
          print*,"302"
    end select
    end select
    print*,"pass"
  end subroutine proc
end module m3

module m4
  use m3
  use m2
contains
  subroutine sub()
    class(t1),allocatable :: p
    allocate(p)
    select type(A=>p)
      type is(t1)
       A%b =12
       call A%proc(A%b)
     end select
  end subroutine sub
end module m4

use m4
call sub
end

