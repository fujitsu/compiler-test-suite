 module m2
  type :: t1
  end type t1
  private
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

  use m2
  use m3
    type(t1) :: p

    call p%proc()

print *,'pass'
end
