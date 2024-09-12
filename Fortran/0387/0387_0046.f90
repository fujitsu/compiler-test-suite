interface
 function func_c1() result(rst)
  character (:), pointer :: rst
 end function
 function func_c2() result(rst)
  character, pointer :: rst
 end function
 function func_c3() result(rst)
  character (len=2), pointer :: rst
 end function
 function func_c4(i) result(rst)
  integer :: i
  character (len=i), pointer :: rst
 end function
 function func_c5(i) result(rst)
  integer :: i
  character (len=2), pointer :: rst
 end function
end interface

procedure (func_c1), pointer :: cp1
procedure (func_c2), pointer :: cp2
procedure (func_c3), pointer :: cp3
procedure (func_c4), pointer :: cp4
procedure (func_c5), pointer :: cp5

cp1 => cp1
cp2 => cp2
cp3 => cp3
cp4 => cp4
cp5 => cp5

cp1 => func_c1
cp2 => func_c2
cp3 => func_c3
cp4 => func_c4
cp5 => func_c5

print *,'pass'

end

function func_c1() result(rst)
 character (:), pointer :: rst
 character , target :: ct
 rst => ct
end function

function func_c2() result(rst)
 character, pointer :: rst
 character , target :: ct
 rst => ct
end function

function func_c3() result(rst)
 character (len=2), pointer :: rst
 character(len=2) , target :: ct
 rst => ct
end function

function func_c4(i) result(rst)
 integer :: i
 character (len=i), pointer :: rst
 character(len=i) , target :: ct
 rst => ct
end function

function func_c5(i) result(rst)
 integer :: i
 character (len=2), pointer :: rst
 character(len=2) , target :: ct
 rst => ct
end function
