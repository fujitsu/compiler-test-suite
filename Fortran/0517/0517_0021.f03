module m1
type x
  integer::x1
  contains
   final:: fin
end type
type::xx
  integer::x2=-1
  type(x)::xv
  type(x)::xv2
  type(x)::xv3
  type(x)::xv4
end type
type::xxx
  integer::x3=-1
  type(xx)::yv
  type(xx)::yv2
  type(xx)::yv3
  type(xx)::yv4
end type
type(xxx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(d%x1/=1) print *,1010
write(26,*)1
    end subroutine
end
use m1
type(xxx),allocatable::a
v%yv%xv%x1=1
v%yv%xv2%x1=1
v%yv%xv3%x1=1
v%yv%xv4%x1=1
v%yv2%xv%x1=1
v%yv2%xv2%x1=1
v%yv2%xv3%x1=1
v%yv2%xv4%x1=1
v%yv3%xv%x1=1
v%yv3%xv2%x1=1
v%yv3%xv3%x1=1
v%yv3%xv4%x1=1
v%yv4%xv%x1=1
v%yv4%xv2%x1=1
v%yv4%xv3%x1=1
v%yv4%xv4%x1=1
a=v
if (a%yv%xv%x1/=1) print *,200
a=v
if (a%yv%xv%x1/=1) print *,200
call chk(26,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
do kk=1,16
read(k,*) nnn;if(nnn/=n-1)print *,1009
end do
read(k,*,end=9) nnn
print *,999
9 end
