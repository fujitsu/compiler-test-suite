module m
 
   type ty
     integer::x
     contains
      final::f1,f2
   end type
 contains
   subroutine f1(e)
     type(ty)::e
      print *,"PASS"
   end subroutine
 subroutine f2(e)
   type(ty)::e(:)
 end subroutine
end

program main
  use m
  type(ty)::obj1,obj2
    obj2%x=10
    obj1=obj2
end 
   
