call ss(1)
call ss(2)
print*,'pass'

contains
subroutine ss(d)
implicit none
integer :: d
Block
Integer,save:: pp=0
pp=pp+1
if(pp/=d) print*,101,pp,d
End block

end subroutine
end

