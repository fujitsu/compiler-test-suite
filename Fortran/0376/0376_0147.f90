program main
  use,intrinsic :: iso_c_binding
  interface
    subroutine sub(ccc) bind(c)
      use,intrinsic :: iso_c_binding
      type,bind(c) :: str
        integer(c_int) :: iii
      end type
      type(str),value :: ccc
    end subroutine
  end interface

  type,bind(c) :: str
    integer(c_int) :: iii
  end type

  type(str) :: s
  s%iii = 100
  call sub(s)
print *,'pass'
  
end program
    subroutine sub(ccc) bind(c)
      use,intrinsic :: iso_c_binding
      type,bind(c) :: str
        integer(c_int) :: iii
      end type
      type(str),value :: ccc
    end subroutine
