subroutine s1(n)
type x
  integer,pointer::x1=>null()
end type
type(x)::v1(n)
type(x)::v2
if (associated(v1(1)%x1)) print *,202
if (associated(v1(2)%x1)) print *,203
if (associated(v2   %x1)) print *,204
end
do n=1,30
call s0(10)
call s1(2)
end do
print *,'sngg114t : pass'
end
subroutine s0(n)
  integer x(10)
do nn=1,n
  x=n 
  write(1,*)x
end do
end


