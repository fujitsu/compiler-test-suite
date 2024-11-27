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
call sub(funa())
contains
 function funa()
 type(xi):: funa
 allocate(funa%x2(2))
 funa%x1=1
 funa%x2=(/1,2/)
 funa%x3=3
 end function
 subroutine sub(x)
 type(xi)::x
 if(x%x1/=1)write(6,*) "NG"
 if(.not.allocated(x%x2))write(6,*) "NG"
write(1,*)loc(x%x2)
 if(any(x%x2/=(/1,2/)))write(6,*) "NG"
 if(x%x3/=3)write(6,*) "NG"
 end subroutine
end
