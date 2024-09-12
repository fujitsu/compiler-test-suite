
module mod
contains
function Ifun() result(ii)
real :: ii
procedure(),pointer :: P
real      :: p
type t1
 procedure(eNt),pointer,nopass ::ip
end type
entry ENt() result(ii)
p=>Ent
end function
end
print *,"pass"
end
