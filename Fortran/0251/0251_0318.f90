block
interface
integer function s1()
end function
end interface 

if( s1()==10) print*,10
print*,'pass block'
end block
end


integer function s1()
s1=10
print*, "calling s1" 
end function
