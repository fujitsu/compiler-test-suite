module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type,extends(x)::xx
  integer,allocatable::x2
end type
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
write(11,*)1
    end subroutine
    function f() result(r)
     type(xx)::r
      allocate(r%x1,source=1)
      allocate(r%x2,source=2)
    end function
end
use m1
type(xx),allocatable::a
allocate(a)
a=f()
if (a%x1/=1) print *,200
a=f()
if (a%x1/=1) print *,200
call chk(11,4)
print *,'pass'
end
subroutine chk(k,n)
rewind k
do nn=1,n
read(k,*) nnn;if(nnn/=1)print *,1009
end do
read(k,*,end=9) nnn
print *,999
9 end
