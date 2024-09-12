module m1
type x
  integer::x1
  contains
   final:: fin
end type
type::xx
  integer::x2
  type(x),allocatable::xv
end type
type(xx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(d%x1/=1) print *,1010
write(10,*)1
    end subroutine
end
use m1
type(xx),allocatable::a
write(10,*)-1
v%x2=2
a=v
if (allocated(a%xv)) print *,200
if (a%x2/=2) print *,2003
a=v
if (allocated(a%xv)) print *,2002
allocate(v%xv)
v%xv%x1=1
a=v
if (a%xv%x1/=1) print *,2003
call chk(10,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
read(k,*) nnn
if (nnn/=-1)print *,98
read(k,*,end=9) nnn
print *,999
9 end
