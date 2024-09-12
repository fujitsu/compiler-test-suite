interface operator(.plus.)
function add(chr01, chr02) result(chr03)
  integer, intent(in),pointer :: chr01, chr02
  integer :: chr03
end function add
end interface
  integer :: string
integer,pointer :: p1,p2

  string =(p1.plus.p2)
  if (string == 1) then
    print *,"pass02"
  else
    print *,"ng ",string
  end if
end program
function add(chr01, chr02) result(chr03)
    integer,intent(in),pointer :: chr01, chr02
    integer :: chr03

print *,"pass01"
chr03 = 1
end function add
