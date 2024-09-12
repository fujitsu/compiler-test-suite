 module m2
  integer::z
  type :: t1
   contains
     procedure :: pc
  end type t1
  private
  public::z
 contains
  subroutine pc(this)
    class(t1) :: this
  end subroutine 
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
contains
subroutines(p)
  use m2
  use m3
    type(t1) :: p

    call p%proc()
end
end
  use m2
  use m3
use m4
    type(t1) :: p

    call p%proc()

print *,'pass'
end
