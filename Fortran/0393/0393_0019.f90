subroutine s1
type x0
  integer::x1
end type
type,extends(x0):: y
  integer::y1
end type
class(x0),allocatable::a(:)

allocate(y:: a(2) )
if (a(1)%x1/=0) print *,101
if (a(2)%x1/=0) print *,101
a(1)%x1=-1
a(2)%x1=-1
if (a(1)%x1/=-1) print *,101
if (a(2)%x1/=-1) print *,101
select type (a)
type is(y)
a(1)%y1=-1
a(2)%y1=-1
if (a(1)%y1/=-1) print *,101
if (a(2)%y1/=-1) print *,101
end select

deallocate(a)
allocate(y::a(2))
if (a(1)%x1/=0) print *,102
if (a(2)%x1/=0) print *,102
select type (a)
type is(y)
if (a(1)%x1/=0) print *,102
if (a(2)%x1/=0) print *,102
end select

end
call s1
print *,'pass'
end
