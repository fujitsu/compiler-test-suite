real ans,arr(2)
block
real x1,arr(4)
external sub
interface
integer function fun(d1)
integer :: d1
end function
end interface
call sub
a=1
b=2
x1=3
ans=a+b+x1+size(arr)+fun(ii)
end block
print *,'pass'
end
subroutine sub
end subroutine
integer function fun(d1)
integer::d1
fun=10
end function
