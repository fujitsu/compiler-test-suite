module m
  type ty
      contains 
      final::f1
  end type
 contains
  subroutine f1(e)
   type(ty)::e
    print *,"PASS"
  end subroutine
end module m
program start
use m
  type::tx
 integer::y
 type(ty)::obj
  end type
   type(tx)::obj1,obj2
    obj2%y=100
    obj1%y=10
  obj1=obj2
end
