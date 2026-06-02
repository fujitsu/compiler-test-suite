module m1
  type :: TParam
  end type
end
module m2
  use m1
  implicit none

  type, extends(TParam) :: type_params_one
    real(8) :: s1
  end type

end

module m3
 use m2
 type :: TDddfunc
    integer(8)::x0(2)
    integer,allocatable::x1(:)
    class(TParam), allocatable :: param
 end type 
 type(TDddfunc)::t
contains
subroutine s1()
real(8)::ddd=1.0D0
t%param = type_params_one(s1=ddd)
end subroutine
end

use m3
allocate(t%x1(3),source=[1,2,3])
if (any(t%x1/=[1,2,3])) print *,2820
call s1()
if (any(t%x1/=[1,2,3])) print *,2821
k=0
select type(p=>t%param)
 type is(type_params_one)
   k=1
   if (p%s1/=1) print *,2001
end select
  
if  (k/=1) print *,2929

print *,'sngg383r : pass'
end
