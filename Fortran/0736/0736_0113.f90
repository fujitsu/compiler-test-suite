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
type(x),dimension(j)::fun
do k=1,j
allocate(fun(k)%x2(2))
 do kk=1,2
   allocate(fun(k)%x2(kk)%y2(2))
   fun(k)%x2(kk)%y2=(/98,99/)
 end do
end do
end function
subroutine sub(a)
type(x),dimension(j)::a
do k=1,j
 do kk=1,2
   if (any(a(k)%x2(kk)%y2/=(/98,99/)))write(6,*) "NG"
 end do
end do
end subroutine
end
