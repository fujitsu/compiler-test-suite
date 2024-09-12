module m1
  type ty
    integer::a
  end type
  type:: ty2
    integer::aa
  end type
  interface
     function f()
      import ty
       type(ty)::f
     end function
   end interface
   contains
   subroutine ss(pp)
     procedure(f),pointer::pp
   end subroutine
 end
 use m1
 type(ty2),allocatable::ttt
print *,'pass'
 end
