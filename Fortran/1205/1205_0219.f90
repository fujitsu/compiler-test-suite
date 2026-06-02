subroutine s1
type x1
  integer::v1
end type
type,extends(x1)::x2
  integer::v2
end type
class(*),allocatable::z
allocate(x2::z)
write(1,*)1
select type(z)
  class is(x1)
   z%v1=10
write(1,*)z%v1
end select
end
call s1
rewind 1
read(1,*)n
read(1,*)n
if (n/=10) print *,2828
print *,'sngg266r : pass'
end
  

