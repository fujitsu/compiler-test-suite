module mod
  type str1
    integer :: iii
  end type
  type :: str2
    integer,private :: jjj
  end type
  interface
    subroutine sub(arg1,arg2)
      import
      type str1
        sequence
        integer :: iii
      end type
      type :: str2
        sequence
        integer :: jjj
      end type
      type(str1) :: arg1
      type(str2) :: arg2
    end subroutine
  end interface
  contains
  subroutine msub()
    type str1
      sequence
      integer :: iii
    end type
    type :: str2
      sequence
      integer :: jjj
    end type
    type(str1) :: sss1
    type(str2) :: sss2
    sss1%iii = 100
    sss2%jjj = 200
    call sub(sss1,sss2)
  end subroutine
end module
subroutine sub(arg1,arg2)
  type str1
    sequence
    integer :: iii
  end type
  type :: str2
    sequence
    integer :: jjj
  end type
  type(str1) :: arg1
  type(str2) :: arg2
  print *,arg1
  print *,arg2
end subroutine

use mod
call msub()
print *,'ok'
end
