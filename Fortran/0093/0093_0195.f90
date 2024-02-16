integer,allocatable :: ii(:)
allocate(ii(5))
call sub(ii)

contains
SUBROUTINE sub(a)
implicit none
integer :: a(5)
complex, DIMENSION(SIZE(a)) :: auto
auto=(2.555,3.999)
print*,auto %re
print*,auto %im
print*,auto(2:3) %re
print*,auto(2:3) %im
print*,auto(2) %re
print*,auto(2) %im
print*,"PASS"
END SUBROUTINE
end
