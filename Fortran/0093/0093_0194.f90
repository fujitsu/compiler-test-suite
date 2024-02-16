PROGRAM test
complex,allocatable :: aa(:,:)
allocate(aa(2,2))
aa(:,1) = (2.34,3.56)
aa(:,2) = (4.78,5.98)
call sub(aa)
contains
subroutine sub(bb)
implicit none
complex :: bb(:,:)
print*,bb%re
print*,bb%im
print*,bb(1,:) %re
print*,bb(2,:) %im
print*,bb(1,2) %re
print*,bb(1,2) %im
PRINT*,"PASS"
end subroutine sub
END PROGRAM


