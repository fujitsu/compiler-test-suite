subroutine s1
type x0
   integer:: x01
end type
type,extends(x0):: x1
    integer::x11
end type
type,extends(x1):: x2
    integer,allocatable::x21(:)
end type
class (x0),allocatable:: a0
allocate( x2::a0 )
a0%x01=1
select type(a0)
 type is(x2)
   allocate(a0%x21(1000))
   write(1,"(z16.16)") loc(a0%x21)
   a0%x11=2
   a0%x21=3
end select
if (a0%x01/=1) print *,201
end
do k=1,10
call s1
end do
print *,'pass'
end
