module m1
 contains
  function f() result(r)
  integer,allocatable,dimension(:)::r
  allocate(r(5:10))
  r=(/1,2,3,4,5,6/)
  end function
end
use m1
integer a(6)
write(1,*)f()
rewind 1
read(1,*)a
if (any(a/=(/1,2,3,4,5,6/)))write(6,*) "NG"
print *,'pass'
end
