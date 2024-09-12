module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type::xx
  integer,allocatable::x2
  type(x)::xv
end type
type(xx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
write(10,*)1
    end subroutine
end
use m1
type(xx),allocatable::a
allocate(v%xv%x1,source=1)
allocate(v%x2,source=2)
a=v
if (a%xv%x1/=1) print *,200
a=v
if (a%xv%x1/=1) print *,200
call chk(10,1)
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
