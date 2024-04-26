interface
integer function fun1()
end function
end interface

block
interface
Integer function fun1()
end function
end interface
if(fun1()==1)print*,"1:pass"
end block
if(fun1()==2)print*,"2:pass"
end

integer function fun1()
integer,save ::i=1
print*,"in fun1"
fun1=i
i=i+1
end function
