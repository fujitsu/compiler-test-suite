  module m
    type t
      integer::a
      contains
      procedure,nopass::sub1
      procedure,nopass::sub2
      generic :: aaa=>sub1,sub2
    end type
  contains
    subroutine sub1(dmy, iii)
      integer            :: dmy(..)
      real :: iii(10)
      iii=22
    end subroutine
    subroutine sub2(dmy, iii)
      integer            :: dmy(..)
      integer :: iii
      iii=2
    end subroutine
  end module


use m
complex :: cmp(10)
type (t) :: sss
integer :: arr(8)
arr=1

call test2()
call sss%aaa (arr(::8), ii)
if (ii .ne.2) print *,'err'
call sss%sub2(arr(::8), ii)
if (ii .ne.2) print *,'err'
!call sss%sub1(arr(::8), ii) ! err
print *,'pass'
end


  module m_func
    type t
      integer::a
      contains
      procedure,nopass::ifun1
      procedure,nopass::ifun2
      generic :: aaa=>ifun1,ifun2
    end type
  contains
    function ifun1(dmy, iii)
      integer            :: dmy(..)
      integer :: iii(10)
      iii=22
      ifun1=1
    end function
    function ifun2(dmy, iii)
      integer            :: dmy(..)
      integer :: iii
      iii=2
      ifun2=2
    end function
  end module

subroutine test2()
use m_func
complex :: cmp(10)
type (t) :: sss
integer :: arr(8)
arr=1

i1=sss%aaa (arr(::8),i1)
if (i1 .ne.2) print *,'err2'
i2=sss%ifun2(arr(::8), i2)
if (i2 .ne.2) print *,'err3'
! i2 =sss%ifun1(arr(::8), i3) ! err
end
