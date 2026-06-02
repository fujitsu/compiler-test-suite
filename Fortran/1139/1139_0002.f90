module m1
  type x
     character(:),allocatable::n
  end type
contains
subroutine s1(d)
type(x),allocatable::v
type(x),allocatable::d
allocate(v,source=d)
write(15,'(z16.16)')loc(d%n)
write(15,'(z16.16)')loc(v%n)
end subroutine
end
use m1
type(x),allocatable::a
allocate(a)
allocate(a%n,source='name')
call s1(a)
call chk

print *,'sngg163k : pass'
end
subroutine chk
character(16)::x,y
rewind 15
read(15,'(a)')x
read(15,'(a)')y
if (x==y) print *,1010
end

