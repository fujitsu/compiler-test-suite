interface
integer function fun1()
end function
end interface

block
interface
integer function fun1()
end function
end interface
if(fun1()==1)print*,"1:pass"
end block
block
interface
integer function fun1()
end function
end interface
if(fun1()==2)print*,"2:pass"
end block
end

integer function fun1()
integer,save::a1=1
print*,"in fun1"
fun1=a1
a1=a1+1
end function
