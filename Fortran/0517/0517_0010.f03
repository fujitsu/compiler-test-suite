module m1
type x
  integer,allocatable::x1
  contains
   final:: fin
end type
type::xx
  integer::x2
  type(x)::xv
  contains
   final:: fin_parent
end type
type(xx)::v
  contains
    subroutine fin(d)
    type(x)::d
     if(allocated(d%x1)) deallocate(d%x1)
write(15,*)1
    end subroutine
    subroutine fin_parent(d)
    type(xx)::d
     if(allocated(d%xv%x1)) deallocate(d%xv%x1)
write(15,*)2
    end subroutine
end
use m1
type(xx)::a
allocate(v%xv%x1,source=1)
a=v
if (a%xv%x1/=1) print *,200
a=v
if (a%xv%x1/=1) print *,200
call chk(15,2)
print *,'pass'
end
subroutine chk(k,n)
rewind k
read(k,*) nnn;if(nnn/=n)print *,1008
read(k,*) nnn;if(nnn/=1)print *,1009
read(k,*) nnn;if(nnn/=n)print *,1008
read(k,*) nnn;if(nnn/=1)print *,1009
read(k,*,end=9) nnn
print *,999
9 end
