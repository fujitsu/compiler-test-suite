module mod1
  integer::var
  type :: ty
  end type ty
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
  use mod1,only:var
  use mod2
    type(ty) :: p

    call p%proc()
end
end
  use mod1,only:var
  use mod2
use m3
    type(ty) :: p

    call p%proc()

print *,'pass'
end
