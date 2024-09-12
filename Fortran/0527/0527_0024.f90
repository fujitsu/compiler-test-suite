module m1
  type ty
    integer::a=1
  end type
  type,extends(ty):: ty2
    integer::aa=2
  end type
  interface
     function f()
      import ty
       class(ty),allocatable::f
     end function
   end interface
   contains
   subroutine ss(pp)
     procedure(f),pointer,intent(in)::pp
   end subroutine
 end
 use m1
 class(ty2),allocatable::ttt
print *,'pass'
 end
