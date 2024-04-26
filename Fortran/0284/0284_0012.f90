module m
type tx
  integer::x
  contains
   final::f
end type tx
contains
   subroutine f(e)
     type(tx)::e
     print *,"PASS"
   end subroutine
end

program start
  use m
type(tx)::obj1
     obj1%x=10
    call f(obj1) 
end

