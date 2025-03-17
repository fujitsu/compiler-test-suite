interface
function fun(i)
integer fun(100001)
end function
end interface
integer a(100001)
a=fun(1)
if (any(a(:2)/=(/1,2/)))print *,'error'
print *,'pass'
end
function fun(i)
integer fun(100001)
fun=0
fun(1)=i
fun(2)=i+1
end function
