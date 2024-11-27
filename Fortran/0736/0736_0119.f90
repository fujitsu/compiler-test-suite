do i=1,10
  call s1
end do
 print *,'pass'
end
subroutine s1
type xi
  integer::x1
  integer,allocatable,dimension(:)::x2
  integer::x3
end type
i=5
call sub(funa())
contains
 function funa()
 type(xi),allocatable:: funa(:)
 allocate(funa(5))
 do j=1,i
 allocate(funa(j)%x2(2))
 funa(j)%x1=1
 funa(j)%x2=(/1,2/)
 funa(j)%x3=3
end do
 end function
 subroutine sub(x)
 type(xi)::x(:)
 do j=1,i
 if(x(j)%x1/=1)write(6,*) "NG"
 if(.not.allocated(x(j)%x2))write(6,*) "NG"
write(1,*)loc(x(5)%x2)
 if(any(x(j)%x2/=(/1,2/)))write(6,*) "NG"
 if(x(j)%x3/=3)write(6,*) "NG"
end do
 end subroutine
end
