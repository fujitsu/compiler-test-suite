 module m1
  type :: t1
  end type t1
end module m1

module m2
  use m1
  private
end module m2

module m3
  type :: t1
   contains
     procedure :: proc
  end type t1
contains
  subroutine proc(this)
    class(t1) :: this
  end subroutine proc
end module m3

module m4
  use m2
  use m3
contains
  subroutine sub()
    type(t1), pointer :: p
    call p%proc()
  end subroutine sub
end module m4

print *,'pass'
end
