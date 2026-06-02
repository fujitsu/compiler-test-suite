module m2
  type ty
   contains
     final :: fin
  end type ty
contains
  subroutine sub
    type(ty)::a
  end subroutine
  subroutine fin(this)
    type(ty),intent(in) :: this
    print *,'sngg222h : pass'
  end 
end 

use m2
call sub
end
