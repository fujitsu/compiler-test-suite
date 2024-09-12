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
class (x0),target,allocatable:: a0
class (x2),pointer::p2
class (x1),pointer::p1
allocate( x2::a0 )
write(1,'(a,z16.16)') 'a0: ', loc(a0)
a0%x01=1
select type(a0)
 type is(x2)
   a0%x11=2
   a0%x21=3
   p2=> a0
   p1=> a0
end select
if (a0%x01/=1) print *,201
write(1,'(a,z16.16)') 'a0: ', loc(a0)
write(1,'(a,z16.16)') 'p2: ', loc(p2)
deallocate( a0)
end
call s1
print *,'pass'
end
