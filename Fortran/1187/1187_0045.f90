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
    real(dp) :: s2
    real(dp) :: s3
    real(dp) :: s4
    real(dp) :: s5
    real(dp) :: s6
  contains
    procedure :: helper
  end type

type :: TDddfuncInput
    integer :: iparams_type
    real(dp) :: s1
    real(dp) :: s2
    real(dp) :: s3
    real(dp) :: s4
    real(dp) :: s5
    real(dp) :: s6
    real(dp) :: r1
    real(dp) :: r2
    real(dp) :: r3
    integer, allocatable :: izp(:)
  end type TDddfuncInput

contains
  subroutine helper(this)
    class(type_params_one), intent(in) :: this
    write(6,'(1A)') "Parameters: 1"
    write(6,'(6E23.15)') this%s1, this%s2, this%s3, this%s4, this%s5, this%s6
  end subroutine
end

module m3
 use m2
 type :: TDddfunc
    integer(8)::x0
    class(TParam), allocatable :: param
 end type
contains
subroutine s1(t,input)
type(TDddfunc), intent(out) :: t(:)
type(TDddfuncInput), intent(in) :: input
integer::n=2
t(n)%param = type_params_one(s1=input%s1, s2=input%s2, s3=input%s3, &
          & s4=input%s4, s5=input%s5, s6=1.0d0)
end subroutine
end

subroutine s(n)
use m3
type(TDddfunc) :: t(n)
type(TDddfuncInput) :: input
  input%s1=1
  input%s2=1
  input%s3=1
  input%s4=1
  input%s5=1
call s1(t,input)
k=0
select type(p=>t(n)%param)
 type is(type_params_one)
   k=1
   if (p%s1/=1) print *,2001
   if (p%s2/=1) print *,2002
   if (p%s3/=1) print *,2003
   if (p%s4/=1) print *,2004
   if (p%s5/=1) print *,2005
   if (p%s6/=1) print *,2006
end select

if  (k/=1) print *,2929

end
call s(2)
print *,'sngg424r : pass'
end
