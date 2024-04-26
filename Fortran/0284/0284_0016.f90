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
module m1
use m
  type,extends(ty)::tx
 integer::y
  end type

end module m1
 program start
 use m1
   type(tx)::obj1,obj2
    obj2%y=100
    obj1%y=10
  obj1=obj2
end
