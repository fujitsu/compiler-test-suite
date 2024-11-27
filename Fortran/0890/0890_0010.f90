module mod1
CONTAINS
function S1(IARG)
  integer :: IARG,S1
  real:: dmy,s1_entry
  print*, "CALLING S1 "
  IARG = 1
  S1 = 2
  entry s1_entry(dmy)
  print*, "CALLING S1_entry ",dmy
END function S1

subroutine Sub(IARG)
integer::IARG
IARG = 2
end subroutine
end module

use mod1
  procedure(s1_entry),pointer :: dmy_prc
  INTERFACE SS
    PROCEDURE dmy_prc,Sub 
  END INTERFACE
  dmy_prc=>s1_entry
end

