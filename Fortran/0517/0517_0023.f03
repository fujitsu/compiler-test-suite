module m1
type x
  integer::x1
  contains
   final:: fin
end type
type::xx
  integer::x2
  type(x),allocatable::xv
  type(x),allocatable::xv2
  type(x),allocatable::xv3
end type
type::xxx
  integer::x3
  type(xx)::yv
  type(xx)::yv2
  type(xx)::yv3
end type
type(xxx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(d%x1/=1) print *,1010
write(10,*)1
    end subroutine
end
use m1
type(xxx),allocatable::a
a=v
allocate(v%yv%xv)
allocate(v%yv%xv3)
allocate(v%yv2%xv)
allocate(v%yv2%xv3)
v%yv%xv%x1=1
v%yv%xv3%x1=1
v%yv2%xv%x1=1
v%yv2%xv3%x1=1
a=v
if (a%yv%xv%x1/=1) print *,200
a=v
call chk(10,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
do kk=1,4
read(k,*) nnn;if(nnn/=n-1)print *,1009
end do
read(k,*,end=9) nnn
print *,999
9 end
