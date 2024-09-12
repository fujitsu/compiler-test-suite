 module m2
   integer::v
  type :: t1
  end type t1
end 

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
  use m2,only:v
  use m3
contains
  subroutine sub()
    type(t1), pointer :: p
    call p%proc()
  end subroutine sub
end module m4

print *,'pass'
end