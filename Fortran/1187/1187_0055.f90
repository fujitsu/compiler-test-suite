module m1
  type, abstract :: TParam
  contains
  end type
  integer,parameter::dp=8
end
module m2
  use m1
  implicit none

  type, extends(TParam) :: type_params_one
    real(dp) :: s1
  end type

type :: TDddfuncInput
    integer :: iparams_type
    real(dp) :: s1
    integer, allocatable :: izp(:)
  end type TDddfuncInput

end

module m3
 use m2
 type :: TDddfunc
    integer(8)::x0(2)
    integer,allocatable::x1(:)
    class(TParam), allocatable :: param
 end type
 type(TDddfunc)::t(2)
contains
subroutine s1()
real(8)::ddd=1.0D0
n=2
if (any(t(n)%x1/=[1,2,3])) print *,2820
!print '("before:",z16.16)',loc(t%x1)
t(n)%param = type_params_one(s1=ddd)
!print '("after :",z16.16)',loc(t%x1)
if (any(t(n)%x1/=[1,2,3])) print *,2821
end subroutine
end

use m3
n=2
allocate(t(n)%x1(3),source=[1,2,3])
call s1()
k=0
select type(p=>t(n)%param)
 type is(type_params_one)
   k=1
   if (p%s1/=1) print *,2001
end select

if  (k/=1) print *,2929

print *,'sngg434r : pass'
end
