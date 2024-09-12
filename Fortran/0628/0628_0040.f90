module mod
implicit none
  interface operator(.plus.)
    module procedure add
  end interface
  interface operator(.aaa.)
    module procedure add02
  end interface
contains 
  function add(chr01, chr02) result(chr03)
    integer,intent(in),pointer :: chr01, chr02
    integer :: chr03

    chr01 = 1
    chr02 = 1
    chr03 = chr01.aaa.chr02

    if (chr01 == 2 .AND. chr02 == 2) then
      print *,"pass01"
    else
      print *,"ng ",chr01,chr02
    end if

  end function add

  function add02(chr01, chr02) result(chr03)
    integer,intent(in),pointer :: chr01, chr02
    integer :: chr03

    chr01 = 2
    chr02 = 2
    chr03 = chr01 + chr02
  end function add02
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
  if (ret == 4 .AND. pp1 == 2 .AND. pp2 == 2) then
    print *,"pass02"
  else
    print *,"ng ",ret,pp1,pp2
  end if
end program
