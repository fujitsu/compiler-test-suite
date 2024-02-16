PROGRAM test
complex,allocatable :: aa(:,:)
allocate(aa(2,2))
aa(:,1) = (3.55,4.98)
aa(:,2) = (8.54,9.54)
call sub(aa)
contains
subroutine sub(bb)
implicit none
complex :: bb(2,*)
print*,bb(:,1)%re
print*,bb(:,2)%im
print*,bb(1,1)%re
print*,bb(1,2)%im
PRINT*,"PASS"
end subroutine sub
END PROGRAM
