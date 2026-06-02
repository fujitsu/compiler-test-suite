module m1
type x
 integer:: x1
 integer,allocatable:: x2
end type
type (x):: v
contains
subroutine s(v)
type (x),value:: v
if (.not.allocated(v% x2 ) ) print *,400
v%x2=10
write(1,'("s:",z16.16)') loc(v%x2)
if (v%x2/=10) print *,402
end subroutine
end
use m1
v%x1=1
allocate(v% x2 , source=2)
do kk=1,2
if (v%x2/=2) print *,301
write(1,'("1:",z16.16)') loc(v%x2)
call s( v )  
write(1,'("2:",z16.16)') loc(v%x2)
if (v%x2/=2) print *,302
end do
call c
print *,'pass'
end
subroutine c
character(100):: a(6)
rewind 1
do k=1,6
read(1,'(a)') a(k)
end do
if (a(1)/=a(4)) write(1,*) '???? 1'
if (a(2)/=a(5)) write(1,*) '???? 2'
if (a(3)/=a(6)) write(1,*) '???? 3'
end
