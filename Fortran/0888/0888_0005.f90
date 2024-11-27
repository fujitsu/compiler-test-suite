interface
  subroutine s(d1)
  integer ,optional,allocatable :: d1
  end subroutine
end interface
call s(NULL())
end program
subroutine s(d1)
integer ,optional,allocatable :: d1
end subroutine
