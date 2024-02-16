character(2,1),allocatable::ch1(:)
character(:,1),allocatable::ch2(:)
allocate(ch1(2))
ch1=(/"ab","cd"/)
call sub(ch1,ch2)
print *,'pass'
contains
subroutine sub(a,b)
character(*),allocatable::a(:)
character(:),allocatable::b(:)
call move_alloc(a,b)
end subroutine
end
