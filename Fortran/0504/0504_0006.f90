 module m2
  type :: t1
  end type t1
  private
end 

module m3
  type :: t1
   integer::x
   contains
     procedure :: proc
  end type t1
contains
  subroutine proc(this)
    class(t1) :: this
  end subroutine proc
end module m3

  use m2
  use m3
    type(t1), pointer :: p
    allocate(p)
    p%x=1
    if (p%x/=1) print *,1010

    call p%proc()

print *,'pass'
end
