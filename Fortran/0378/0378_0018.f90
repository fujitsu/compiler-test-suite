subroutine s1
character(2),allocatable::i
call s(i)
if (.not.allocated(i))print *,2
if (i/='12')print *,3,i
contains
subroutine s(i)
character(*),allocatable::i
allocate(character(*)::i)
if (len(i)/=2)print *,1,len(i)
i='12'
end subroutine
end
call s1
print *,'pass'
end
