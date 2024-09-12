module mod
implicit none
  interface operator(.plus.)
    module procedure add
  end interface
contains 
  function add(chr01, chr02) result(chr03)
    integer,intent(in),pointer :: chr01, chr02
    integer :: chr03

    chr01 = 1
    chr02 = 1
    print *,"pass01"
    chr03 = chr01 + chr02
  end function add
end module mod

use mod
implicit none
 integer, pointer:: pp1,pp2
 integer         :: ret
 allocate(pp1)
 allocate(pp2)

  pp1 = 0
  pp2 = 0

  ret = (pp1.plus.pp2)
  if (ret == 2 .AND. pp1 == 1 .AND. pp2 == 1) then
    print *,"pass02"
  else
    print *,"ng ",ret,pp1,pp2
  end if
end program
