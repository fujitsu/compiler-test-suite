subroutine s1
character(2),allocatable,dimension(:)::a
allocate(character(2)::a(2),stat=k)
a='11'
allocate(character(2)::a(2),stat=k)
if (any(a/='11'))print *,404
end

call s1
print *,'pass'
end
