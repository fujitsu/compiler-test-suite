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

subroutine s1
  use mod1,only:var
  use mod2
    type(ty) :: p

    call p%proc()
end

print *,'pass'
end
