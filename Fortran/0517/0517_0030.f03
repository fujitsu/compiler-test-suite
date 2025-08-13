module mod
type x
  integer::x1=1
  contains
   final:: final_proc
end type
  contains
    subroutine final_proc(d)
    type(x)::d
     d%x1=d%x1+1
write(4,*)d%x1
    end subroutine
end
use mod
type::xx
  integer::x2
  type(x)::xv
end type
type ::xxx
type(xx),allocatable::a(:,:)
end type
type(xxx),allocatable::aa(:)
type(xxx)::v(2)
type(xx)::vv(2,3)
aa=v
if (allocated(aa(2)%a)) print *,200
do k=1,2
aa(k)%a=vv
if (aa(k)%a(2,3)%xv%x1/=1) print *,9001
end do
aa=v
rewind 4
do kk=1,12
read(4,*) n
if (n/=2) print *,2002
end do
read(4,*,end=10) n
print *,999
10 continue

print *,'pass'
end
