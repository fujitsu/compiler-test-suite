block
interface
integer function s1()
end function
end interface 

if(f1(s1())==10) print*,10
print*,'pass block'
end block

contains 
integer function  f1(dmy)
integer dmy 
f1=dmy
end  function
end


integer function s1()
s1=10
print*, "calling s1" 
end function
