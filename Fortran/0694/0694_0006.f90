function f() result(r)
integer r(2)
r(1)=1
r(2)=2
end function

interface
function f() result(r)
integer r(2)
end function
end interface
integer x(2)
x=f()
write(2,*)x
print *,'pass'
end
