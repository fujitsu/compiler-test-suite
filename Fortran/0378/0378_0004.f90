interface
 function func1(i) result(j)
  integer :: i,j
 end function
 function func2(i) result(j)
  integer :: i,j
 end function
end interface

procedure(func1),pointer :: pfp

pfp=>func1
if (pfp(1)/=1)print *,'error'

pfp=>func2 
if (pfp(1)/=2)print *,'error-2'

print *,'pass'
end

function func1(i) result(j)
 integer :: i,j
 j=i
end function
function func2(i) result(j)
 integer :: i,j
 j=i+1
end function
