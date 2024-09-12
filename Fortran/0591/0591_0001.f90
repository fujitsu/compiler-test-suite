 character(:),allocatable,dimension(:)::a1,a2
 allocate(character*(1)::a1(1))
 allocate(character*2::a2(1))
 
if(allocated(a1) .and. allocated(a1))then
 a1='A'
 a2='BC'
  if(len(a1) /= 1) print*,"101"
  if(len(a2) /= 2) print*,"102"
endif

print*,"PASS"
end
