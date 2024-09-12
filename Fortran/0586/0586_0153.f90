interface
 function funci1() result(rst)
  integer(kind=2) :: rst
 end function
 function funci2() result(rst)
  integer(kind=2) :: rst
 end function
end interface
procedure(funci1),pointer :: pi1 =>funci2

if(associated(pi1).neqv..true.)print*,"101"
if(pi1().ne.40)print*,"102"
print*,"PASS"
end
function funci2() result(rst)
  integer(kind=2) :: rst
  rst =40
 end function

