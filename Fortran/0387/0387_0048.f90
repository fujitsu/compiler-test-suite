interface sosyo
 function funci4(i) result(rst)
  integer(kind=4) :: i
  character(:),pointer :: rst(:)
 end function
 function funcr4(i) result(rst)
  real(kind=4) :: i
  character(:),pointer :: rst(:)
 end function
end interface
interface
 subroutine sub(cc)
  character(:),pointer :: cc(:)
 end subroutine
end interface

integer(kind=4) :: i4
real(kind=4) :: r4

 call sub(sosyo(i4))
 call sub(sosyo(r4))

print *,'pass'

end

function funci4(i) result(rst)
 integer(kind=4) :: i
 character(:),pointer :: rst(:)
 character , target :: cc(1)
 rst => cc
end function

function funcr4(i) result(rst)
 real(kind=4) :: i
 character(:),pointer :: rst(:)
 character , target :: cc(1)
 rst => cc
end function

subroutine sub(cc)
 character(:),pointer :: cc(:)
end subroutine
