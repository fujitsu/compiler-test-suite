module mod
  type, public :: tt
     integer   :: i1, i2
     real      :: r1, r2 = 0.0
  end type tt
  
  type (tt),dimension(300000),save :: tV
  
end module mod

program main
  print *, "OK"
end program main
