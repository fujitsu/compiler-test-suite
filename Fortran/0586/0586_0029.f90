type ty
complex*16 :: cmp(4)
end type

type(ty),target :: tytar
real*8,pointer :: ptr1(:)
tytar%cmp(1:2) = (2,3)
    
data ptr1 /tytar%cmp(1:2)%re/
ptr1=7
if(any(tytar%cmp(1:2)%re .ne. 7)) print*,"103"
if(any(ptr1.ne. 7)) print*,"103"
print*,"Pass"
 end


