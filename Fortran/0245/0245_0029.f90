INTEGER :: ii(3,4) =2
CALL sub(ii)

contains
subroutine sub(o1)
INTEGER, CONTIGUOUS, POINTER :: p1(:)
INTEGER, CONTIGUOUS, TARGET :: o1(:,:) 
p1(1:SIZE(o1)) => o1
if(size(p1) == 12 .and. all(p1==2)) print*,'pass'
end subroutine
end
