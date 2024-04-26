module m1
type ty
integer :: ii=10
end type
end module

call sub()
contains
subroutine sub()
use m1
interface operator(.xor.)
integer function fun1(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
end function
end interface
type(ty) :: obj1
block
integer :: ii = 6
interface operator(.eor.)
integer function fun2(d1,d2)
use m1
type(ty),intent(in) :: d1
character(LEN=*),intent(IN) :: d2
end function
end interface
  block
    interface operator(.ppp.)
    integer function fun3(d1,d2)
    use m1
    type(ty),intent(in) :: d1
    integer,intent(IN) :: d2
    end function
    end interface 
    if((obj1.ppp.ii) /=4)print*,101  
    block
    integer::ii =3
      if((obj1.xor.ii) /=13)print*,102  
      block
        if((obj1.xor.ii)*(obj1.eor.'block')*(obj1.ppp.ii) /=4550)print*,103  
      end block
    end block
  end block
  if((obj1.eor.'abc') /=30)print*,104  
end block
print*,"Pass"
end subroutine
end

integer function fun1(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
fun1 = d1%ii + d2
end function

integer function fun2(d1,d2)
use m1
type(ty),intent(in) :: d1
character(LEN=*),intent(IN) :: d2
fun2 = d1%ii * len(d2)
end function

integer function fun3(d1,d2)
use m1
type(ty),intent(in) :: d1
integer,intent(IN) :: d2
fun3 = d1%ii - d2
end function

