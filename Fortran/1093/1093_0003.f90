module m
  type t
     integer::a
   contains
     procedure,nopass::sub1
     procedure,nopass::sub2
     generic :: aaa=>sub1,sub2
  end type t
contains
  subroutine sub1(dmy, iii)
    integer,           pointer :: dmy(:)
    integer iii(10)
    iii=22
  end subroutine sub1
  subroutine sub2(dmy, iii)
    integer,           pointer :: dmy(:)
    iii=2
  end subroutine sub2
end module m


use m
complex :: cmp(10)
type (t) :: sss
integer,pointer :: arr(:)
allocate(arr(8))
arr = 1
call test2()
call sss%aaa (arr, i1)
if (i1 .ne.2) print *,'err'
call sss%sub2(arr, i2)
if (i2 .ne.2) print *,'err'
!call sss%sub1(arr, i3) ! err
print *,'pass'
end program


module m_func
type t
   integer::a
 contains
   procedure,nopass::ifun1
   procedure,nopass::ifun2
   generic :: aaa=>ifun1,ifun2
end type t
contains
function ifun1(dmy, iii)
  integer,           pointer :: dmy(:)
  integer :: iii(10)
  iii=22
  ifun1=1
end function ifun1
function ifun2(dmy, iii)
  integer,           pointer :: dmy(:)
  integer :: iii
  iii=2
  ifun2=2
end function ifun2
end module m_func

subroutine test2()
use m_func
complex :: cmp(10)
type (t) :: sss
integer,pointer :: arr(:)
allocate(arr(8))
arr = 1

i1=sss%aaa (arr, iii)
if (i1 .ne.2) print *,'err2'
i2=sss%ifun2(arr, iii)
if (i2 .ne.2) print *,'err3'
! i2 =sss%ifun1(cmp(1)%im) ! err
end subroutine test2
