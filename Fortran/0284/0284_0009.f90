module m
   type tx
     integer::x
     contains
       procedure,nopass::f
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
type(tx)::obj1,obj2
   call obj1%f(obj2)
end

