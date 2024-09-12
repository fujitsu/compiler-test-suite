interface operator(.plus.)
function add01(chr01, chr02) result(chr03)
  real, intent(in),pointer :: chr01, chr02
  integer :: chr03
end function add01
function add02(chr01, chr02) result(chr03)
  integer, intent(in) :: chr01, chr02
  integer :: chr03
end function add02
end interface

  integer :: ret
  real,pointer :: pp1,pp2
  integer            :: ii1,ii2

  ret =(pp1.plus.pp2)
  ret =(ii1.plus.ii2)
end program

function add01(chr01, chr02) result(chr03)
    real,intent(in),pointer :: chr01, chr02
    integer :: chr03
print *,"pass01"
chr03 = 1
end function add01

function add02(chr01, chr02) result(chr03)
    integer, intent(in) :: chr01, chr02
    integer :: chr03
print *,"pass02"
chr03 = 1
end function add02
