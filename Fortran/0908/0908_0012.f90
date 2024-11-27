integer function fun(x,y) result(res)
type(*) :: x
type(*) :: y
print*,"In fun"
res = 5
return
entry fun2(x,y)
print*,"In fun2"
res = 10
return
end function
end
