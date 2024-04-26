call ss 

contains
subroutine ss
implicit none
Block
Integer,allocatable :: pp
allocate(pp)
pp=0
pp=pp+1
if(pp==1) print*,'pass'
End block

end subroutine
end

