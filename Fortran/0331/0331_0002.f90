module      test01b
parameter (b=2)
integer :: i=b
end module     test01b

module      test02b
integer,private :: b1=2
integer,public  :: b2=3
end module     test02b

subroutine test03b 
integer :: b,i,j
dimension :: b(:,:)
allocatable b
allocate (b(2,-5:8))

do i=1,2
do j=-5,8
b(i,j)=i*j
if(b(i,j).ne.i*j) print *,"err-03b"
end do
end do


deallocate (b)
end subroutine test03b

subroutine test04b
integer,dimension (10) :: b=3
if(any(b.ne.3))print *,"err-04b"
end subroutine test04b

subroutine test05b
intrinsic sin
if(abs(sin(1.57)-0.999999702).gt.0.00001) print *,"err-05b"
end subroutine test05b

function sin(x)
sin=x+1.0
return 
end function

subroutine test06b
external sin
if(abs(sin(1.57)-2.57000017).gt.0.00001) print *,"err-06b"
end subroutine test06b

subroutine test07b(a,b)
integer,optional :: a
integer,optional :: b
if(a.ne.5)print *,"err-07b"
if(present(b))print *,"err-07b"
end subroutine test07b

subroutine chktest01b
use test01b
if(i.ne.2)print *,"err test01b"
end subroutine chktest01b

subroutine chktest02b
use test02b
if(b2.ne.3)print *,"err test02b"
end subroutine chktest02b

subroutine chktest03b
call test03b
end subroutine chktest03b

subroutine chktest04b
call test04b
end subroutine chktest04b

subroutine chktest05b
call test05b
end subroutine chktest05b

subroutine chktest06b
call test06b
end subroutine chktest06b

subroutine chktest07b
interface
subroutine test07b(a,b)
integer,optional :: a
integer,optional :: b
end subroutine
end interface
call test07b(5)
end subroutine chktest07b


type test08b
integer,pointer :: b
end type test08b


call chktest01b
call chktest02b
call chktest03b
call chktest04b
call chktest05b
call chktest06b
call chktest07b

print *,"pass"
end
