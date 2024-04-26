module m
  type ty
     integer::x
      contains 
      final::f1
  end type
 type,extends(ty)::tx
    integer::y
    contains
    final::f2 
 end type
 contains
  subroutine f1(e)
   type(ty)::e
    print *,"PASS"
  end subroutine
 subroutine f2(e)
   type(tx)::e
 end subroutine

end module m
 program start
 use m
   type(tx)::obj1,obj2
    obj2%y=10
    obj2%ty%x=20
  obj1=obj2
end
