module mod
  type, public :: tt
     integer,pointer :: dest(:) => NULL()
  end type tt
  
  type (tt),dimension(300000),save :: tV
end module mod

program main
  print *, "OK"
end program main
