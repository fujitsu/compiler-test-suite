implicit integer   (e)
implicit character (p)

interface
 function func01() result(rst01)
  integer :: rst01
 end function
 subroutine sub01()
 end subroutine
end interface

external    :: eprocp01, eprocp02, eprocp03
procedure() :: pprocp01, pprocp03
pointer     :: pprocp01, pprocp03, eprocp01, eprocp02, eprocp03

eprocp02 => func01
pprocp03 => sub01
eprocp03 => sub01

call sub02(eprocp02())

call pprocp03()
call eprocp03()

pprocp01 => eprocp02
pprocp01 => eprocp03
pprocp03 => eprocp01

end

function func01() result(rst01)
 integer :: rst01
 rst01 = 1
end function

subroutine sub01()
end subroutine

subroutine sub02(c)
 integer :: c
 if (c.eq.1) print *,'pass'
end subroutine
