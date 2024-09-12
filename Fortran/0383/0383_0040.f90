module mod01
  contains
  subroutine sub01(arg1)
    type :: str1
      sequence
      procedure(sub01),pointer,nopass :: sss
    end type
    type(str1) :: arg1
  end subroutine
  subroutine sub02(arg1)
    type :: str2
      sequence
      procedure(sub02),pointer,nopass :: sss
    end type
    type(str2) :: arg1
  end subroutine
end module
use mod01
    type :: str1
      sequence
      procedure(sub01),pointer,nopass :: sss
    end type
    type :: str2
      sequence
      procedure(sub02),pointer,nopass :: sss
    end type
type(str1) :: sss01
type(str2) :: sss02
call sub01(sss01)
call sub02(sss02)
print *,'pass'
end
