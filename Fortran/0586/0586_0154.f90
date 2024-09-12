interface
 pure function funci1() result(rst)
  real(kind=4),pointer :: rst
 end function
 function funci2() result(rst)
  real(kind=4),pointer :: rst
 end function
end interface

procedure(funci2),pointer :: pi1 =>funci1
if(associated(pi1).neqv..true.)print*,"101"
if(pi1().ne.40)print*,"102"
print*,"PASS"
end
 pure function funci1() result(rst)
  real(kind=4),pointer :: rst
  allocate(rst)
  rst =40
 end function


