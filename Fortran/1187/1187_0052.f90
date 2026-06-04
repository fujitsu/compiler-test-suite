module m1
  type, abstract :: TParam
  contains
  procedure(params_interface), deferred :: helper
  end type
  abstract interface
    subroutine params_interface(this)
      import :: TParam
      class(TParam), intent(in) :: this
    end subroutine
  end interface
  integer,parameter::dp=8
end
module m2
  use m1
  implicit none

  type, extends(TParam) :: type_params_one
    real(dp) :: s1
  contains
    procedure :: helper
  end type

type :: TDddfuncInput
    integer :: iparams_type
    real(dp) :: s1
    integer, allocatable :: izp(:)
  end type TDddfuncInput

contains
  subroutine helper(this)
    class(type_params_one), intent(in) :: this
    write(6,'(1A)') "Parameters: 1"
    write(6,'(1E23.15)') this%s1
  end subroutine
end

module m3
 use m2
 type :: TDddfunc
    integer(8)::x0
    class(TParam), allocatable :: param
 end type
contains
subroutine s1(t)
type(TDddfunc), intent(out) :: t(:)
real(8)::ddd=1.0D0
integer::n=2
t(n)%param = type_params_one(s1=ddd)
end subroutine
end

subroutine s(n)
use m3
type(TDddfunc) :: t(n)
call s1(t)
k=0
select type(p=>t(n)%param)
 type is(type_params_one)
   k=1
   if (p%s1/=1) print *,2001
end select

if  (k/=1) print *,2929
end
call s(2)

print *,'sngg431r : pass'
end
