call s1
print *,'pass'
end
subroutine s1
integer,parameter::j=1000
   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
do i=1,5
call sub(fun())
end do
contains
function fun()
type(x)::fun
allocate(fun%x2(j))
 do kk=1,j
   allocate(fun%x2(kk)%y2(2))
   fun%x2(kk)%y2=(/98,99/)
 end do
end function
subroutine sub(a)
type(x)::a
 do kk=1,j
   if (any(a%x2(kk)%y2/=(/98,99/)))write(6,*) "NG"
 end do
end subroutine
end
