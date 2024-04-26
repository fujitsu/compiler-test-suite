block
interface
subroutine s1
end subroutine
end interface 

call s1
print*,'pass block'
end block
end

subroutine s1
print*, "calling s1" 
end subroutine

