interface
 pure function funci1() result(rst)
  integer(kind=1) :: rst
 end function
 function funci2() result(rst)
  integer(kind=1) :: rst
 end function
end interface

intrinsic AINT
procedure(funci2),pointer :: pi2 =>funci1

if(associated(pi2).neqv..true.)print*,"102"
if(pi2().ne.50)print*,"105"
print*,"PASS"
end
 pure function funci1() result(rst)
  integer(kind=1) :: rst
  rst =50
 end function


