module m
 
   type ty
     integer::x
     integer,ALLOCATABLE::kk
     contains
      final::f1
   end type
 contains
 elemental  subroutine f1(e)
     type(ty),intent(inout)::e
     IF(ALLOCATED(e%kk))DEALLOCATE(e%kk)
   end subroutine
end

program main
  use m
  type(ty)::obj1,obj2
    obj2%x=30
    obj1=obj2
    print *,"PASS"
end 
   
