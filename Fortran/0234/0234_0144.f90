 module mod1
  integer::z
  type :: ty
  end type ty
  private
  public::z
end 

module mod2
  type :: ty
   contains
     procedure :: proc
  end type ty
contains
  subroutine proc(this)
    class(ty) :: this
  end subroutine proc
end 

module m3
contains
subroutine s1(p)
  use mod1
  use mod2
    type(ty) :: p

    call p%proc()
end
end
use m3
  use mod1
  use mod2
    type(ty) :: p

    call p%proc()

print *,'pass'
end
