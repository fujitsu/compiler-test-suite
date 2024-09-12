interface
 pure function funci1() result(rst)
  integer(kind=1) :: rst
 end function
 pure function funci2() result(rst)
  integer(kind=1) :: rst
 end function
end interface

procedure(funci1),pointer :: pi1 =>funci2
procedure(funci2),pointer :: pi2 =>funci1
pi1 => funci2
pi2 => funci1 

if(associated(pi1).neqv..true.)print*,"101"
if(associated(pi2).neqv..true.)print*,"102"
print*,"PASS"
end
 pure function funci1() result(rst)
  integer(kind=1) :: rst
 end function
 pure function funci2() result(rst)
  integer(kind=1) :: rst
 end function


