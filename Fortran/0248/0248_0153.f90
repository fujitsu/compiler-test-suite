integer,allocatable :: int01(:)
integer :: int02(1:4) = 1
integer :: ii 
allocate(int01(1:3),mold=int02(1:4),stat=ii)
if(ii .eq. 0 .AND. size(int01) .eq. 3)then
print*,'pass'
else
print*,'101'
int01=2
end if
end
