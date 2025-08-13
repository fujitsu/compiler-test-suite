module m1
type x
  integer::x1
  contains
   final:: fin
end type
type::xx
  integer::x2=0
  type(x)::xv
end type
type::xxx
  integer::x3=0
  type(xx)::yv
end type
type(xxx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(d%x1/=1) print *,1010
write(25,*)1
    end subroutine
end
use m1
type(xxx),allocatable::a
v%yv%xv%x1=1
a=v
if (a%yv%xv%x1/=1) print *,200
a=v
if (a%yv%xv%x1/=1) print *,200
call chk(25,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
read(k,*) nnn;if(nnn/=n-1)print *,1009
read(k,*,end=9) nnn
print *,999
9 end
