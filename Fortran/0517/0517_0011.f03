module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type::xx
  integer::x2
  type(x),allocatable::xv
  contains
   final:: fin_parent
end type
type(xx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
write(10,*)1
    end subroutine
    subroutine fin_parent(d)
    type(xx)::d
     if(allocated(d%xv)) deallocate(d%xv)
write(10,*)2
    end subroutine
end
use m1
type(xx),allocatable::a
a=v
if (allocated(a%xv)) print *,200
allocate(v%xv)
a=v
if (.not.allocated(a%xv)) print *,201
allocate(v%xv%x1,source=1)
a=v
if (a%xv%x1/=1) print *,202
call chk(10,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
read(k,*) nnn;if(nnn/=n)print *,1008
read(k,*) nnn;if(nnn/=1)print *,1018
read(k,*) nnn;if(nnn/=n)print *,1028
read(k,*,end=9) nnn
print *,999
9 end
