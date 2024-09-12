module m1
type x
  integer::x1
  contains
   final:: fin
end type
type::xx
  integer::x2
  type(x),allocatable::xv
  contains
   final:: fin0
end type
type(xx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(d%x1/=1) print *,1010
write(10,*)1
    end subroutine
    subroutine fin0(d)
    type(xx)::d
     if(d%x2/=2) print *,1010
write(10,*)2
    end subroutine
end
use m1
type(xx),allocatable::a
v%x2=2
a=v
allocate(v%xv)
v%xv%x1=1
a=v
if (a%xv%x1/=1) print *,200
call chk(10,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
read(k,*) nnn;if(nnn/=n)print *,1009
read(k,*,end=9) nnn
print *,999
9 end
