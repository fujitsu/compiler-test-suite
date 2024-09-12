interface operator(.plus.)
function add02(chr0201, chr0202) result(chr03)
  real,intent(in) :: chr0201, chr0202
  integer :: chr03
end function add02
function add01(chr0101, chr0102) result(chr03)
  integer, intent(in),pointer :: chr0101, chr0102
  integer :: chr03
end function add01
end interface

  integer :: ret
  integer,pointer :: pp1,pp2
  real            :: rr1,rr2

  ret =(pp1.plus.pp2)
  ret =(rr1.plus.rr2)
end program

function add02(chr01, chr02) result(chr03)
    real,intent(in) :: chr01, chr02
    integer :: chr03
print *,"pass02"
chr03 = 1
end function add02
function add01(chr01, chr02) result(chr03)
    integer,intent(in),pointer :: chr01, chr02
    integer :: chr03
print *,"pass01"
chr03 = 1
end function add01
