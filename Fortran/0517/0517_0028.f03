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
write(2,*)d%x1
    end subroutine
end
use mod
type::xx
  integer::x2
  type(x)::xv
end type
type ::xxx
type(xx),allocatable::a
end type
type(xxx)::aa
type(xxx)::v
type(xx)::vv
aa=v
if (allocated(aa%a)) print *,200
aa%a=vv
if (aa%a%xv%x1/=1) print *,9001
aa=v
rewind 2
read(2,*) n
if (n/=2) print *,2002
print *,'pass'
end
