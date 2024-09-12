 module mmm
 type t
 integer :: ii
 contains
 generic::assignment(=)=>aaa
 procedure,private::aaa
 end type t
 contains
 subroutine aaa (a,b)
 class(t),intent(inout)::a
 class(t),intent(in)::b
 a%ii = b%ii + 10
 end subroutine
 end module

 module mm1
   use mmm,only:t
   type(t) :: obj1,obj2
 end module

 module mm2
   use mm1,only:t
   type(t) :: obj1,obj2
  private
 end module

 module mm3
   use mm1
   use mm2
 end module

 use mm3
 obj2%ii = 10
 obj1 = obj2
 if(obj1%ii .NE. 20) print*,"121"
 print*,"Pass"
 end
