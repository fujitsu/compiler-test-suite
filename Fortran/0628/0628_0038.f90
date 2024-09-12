interface operator(.plus.)
function add01(chr01, chr02) result(chr03)
  real, intent(in),pointer :: chr01
  integer, intent(in)      :: chr02
  integer :: chr03
end function add01
function add02(chr01, chr02) result(chr03)
  integer, intent(in)      :: chr01
  real, intent(in),pointer :: chr02
  integer :: chr03
end function add02
end interface

  integer :: ret
  real,pointer :: pp1,pp2
  integer      :: ii1,ii2

  ret =(pp1.plus.ii1)
  ret =(ii2.plus.pp2)
end program

function add01(chr01, chr02) result(chr03)
  real, intent(in),pointer :: chr01
  integer, intent(in)      :: chr02
  integer :: chr03
chr03 = 1
print *,"pass01"
end function add01

function add02(chr01, chr02) result(chr03)
  integer, intent(in)         :: chr01
  real, intent(in),pointer :: chr02
  integer :: chr03
print *,"pass02"
chr03 = 1
end function add02
