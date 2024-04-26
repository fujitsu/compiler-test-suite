
subroutine s1()
implicit none

block
interface operator(*)
function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
end function
end interface
if("AB"*"CD" == 4 )then 
print*, "pass-3"
else 
print*, "fail-3"
end if 
end block

block

interface operator(+)
function f1(d1,d2)
integer::f1
character(len=*),intent(in) :: d1,d2
end function
end interface
if("ABC"+"CDE" == 6 )  then 
print*, "pass-2"
else 
print*, "fail-2"
end if  
end block

block

interface operator(-)
function f2(d1,d2)
integer::f2
character(len=*),intent(in) :: d1,d2
end function
end interface

if("ABC"-"DE" == 1)  then
print*, "pass-1"
else
print*, "fail-1"
end if
end block

end subroutine

call  s1()
end


function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
ff=len(d1)*len(d2)
end function


function f1(d1,d2)
integer::f1
character(len=*),intent(in) :: d1,d2
f1=len(d1)+len(d2)
end function


function f2(d1,d2)
integer::f2
character(len=*),intent(in) :: d1,d2
f2=len(d1)-len(d2)
end function
