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
    end subroutine
end
use mod
type::xx
  integer::x2
  type(x)::xv
end type
type(xx)::v
type z
 type(xx),allocatable::a
end type
 type(z)::aa
aa%a=v

if (aa%a%xv%x1/=1) print *,200
print *,'pass'
end
