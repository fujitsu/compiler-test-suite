type x
  integer::x1
end type
class(*),allocatable::c1
call ss(k=k)
if (k/=0) print *,101
allocate(x:: c1)
write(1,*) loc(c1)
call ss(c1,k=k)
if (k/=1) print *,102
call chk
print *,'pass'
contains
subroutine ss(c1,k)
class(*),optional,allocatable::c1
k=0
if (present(c1)) then
if (loc(c1)==0) print *,301
write(1,*) loc(c1)
k=1
end if
end subroutine
end
subroutine chk
integer(8):: k1,k2
rewind 1
read(1,*) k1
read(1,*) k2
if (k1/=k2) print *,101,k1,k2
end

