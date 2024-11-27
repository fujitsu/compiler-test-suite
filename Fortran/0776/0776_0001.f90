character(2),allocatable:: a
call s1(a)
print *,'pass'
contains
subroutine s1(a)
character(*),allocatable:: a
allocate(a,source='1')
end subroutine
end
