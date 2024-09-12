subroutine s1
type x0
   integer:: x01
end type
type,extends(x0):: x1
    integer::x11
end type
type,extends(x1):: x2
    integer::x21
end type
class (x0),allocatable:: a0
allocate( x2::a0 )
a0%x01=1
select type(a0)
 type is(x2)
   a0%x11=2
   a0%x21=3
end select
if (a0%x01/=1) print *,201
end
call s1
print *,'pass'
end
