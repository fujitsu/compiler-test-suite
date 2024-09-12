module tmd
  type tp0
     real :: ra(1) = 100.0
     integer :: ia(3) = 100
  end type tp0
end module tmd

recursive subroutine subr(tt, ii)
  use tmd
  type(tp0) tt
  integer ii

  print *, ii

  if (ii.eq.0) then
     print *, tt
  else
     ii = ii - 1
     call subr(tt, ii)
  end if

end subroutine subr

program test
  use tmd
  type(tp0) mt
  integer :: num = 5
  call subr (mt, num)
end program test
