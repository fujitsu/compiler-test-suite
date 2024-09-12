module m1
type x
  integer::x1=1
  contains
   final:: final_proc
end type
type::xx
  integer::x2
  type(x)::xv
end type
type(xx)::v
  contains
    subroutine final_proc(d)
    type(x)::d
     d%x1=d%x1+1
    end subroutine
end
use m1
type(xx),allocatable::a
a=v

if (a%xv%x1/=1) print *,200
print *,'pass'
end
