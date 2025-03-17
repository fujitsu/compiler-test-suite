interface
function fun(i)
integer fun(2)
end function
end interface
integer a(2)
a=fun(1)
if (any(a/=(/1,2/)))print *,'error'
print *,'pass'
end
function fun(i)
integer fun(2)
fun(1)=i
fun(2)=i+1
end function
