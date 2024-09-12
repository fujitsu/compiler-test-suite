module mod
  implicit none

  type proc_type
  contains
    procedure,nopass  :: proc
  end type proc_type
  type, EXTENDS(proc_type) :: extended_type
  end type extended_type

  contains
    subroutine proc()
      write(1,*)1
    end subroutine
end module mod

program main
  use mod
  type (extended_type) :: obj
  call obj%proc_type%proc()
call chk
  print *,'pass'
end
subroutine chk
rewind 1
read(1,*) k;if (k/=1)print *,k
end
