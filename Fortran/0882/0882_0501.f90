program main

INTERFACE
function fun1()
integer :: fun1
end function
END INTERFACE

integer :: res
res = fun()
if (res /= 100)then
print *,1001
else 
print *,"pass"
end if

contains
function fun()
integer :: fun
fun= fun1()
end function
END Program 

function fun1()
class(*),pointer:: ptr1=>NULL()
integer :: fun1
allocate(integer::ptr1)
select type(ptr1)
TYPE IS(INTEGER)
ptr1=100
fun1= ptr1
end select 
end function
