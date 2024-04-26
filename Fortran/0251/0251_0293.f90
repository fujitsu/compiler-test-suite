implicit none

block
interface operator(*)
function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
end function
end interface

block
block

if("A"*"B" == 1)  then
print*, "pass-1"
else
print*, "fail-1"
end if
end block

if("ABC"*"CDE" == 9)  then 
print*, "pass-2"
else 
print*, "fail-2"
end if  
end block
 
if("AB"*"CD" == 4)  then 
print*, "pass-3"
else 
print*, "fail-3"
end if 
end block

end


function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
ff=len(d1)*len(d2)
end function


