interface
function fun(k,i)
integer k(:)
integer fun(size(k))
end function
end interface
integer a(2)
i1=2;i2=3
a=fun((/(i,i=i1,i2)/),1)
if (any(a/=(/2,3/)))print *,'error-1'
print *,'pass'
end
function fun(k,i)
integer k(:)
integer fun(size(k))
fun(i)=k(1)
fun(2)=k(2)
end function
