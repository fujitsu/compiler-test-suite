interface
 function func(i) result(j)
  integer i,j
 end function
 subroutine sub(i)
  integer i
 end subroutine
 function func1(i) result(j)
  integer,external,pointer :: i
  integer :: j
 end function
 function func3(i) result(j)
  integer,external,pointer :: i
  integer :: j
 end function
end interface

procedure (func), pointer :: pfp
procedure (sub), pointer :: psp
pfp=>func
psp=>sub

i = func1(pfp)

print *,'pass'

end

function func(i) result(j)
 integer i,j
 j=i
end function
subroutine sub(i)
 integer i
end subroutine
function func1(i) result(j)
 integer,external,pointer :: i
 integer :: j
 j=1
end function
function func3(i) result(j)
 integer,external,pointer :: i
 integer :: j
 j=1
end function
