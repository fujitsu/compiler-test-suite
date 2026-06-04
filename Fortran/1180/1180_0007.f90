subroutine s1
character,allocatable::a(:)
!open(1,form='formatted',delim='quote')
allocate(a(32769))
a='3'
write(14,'(32769 A)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg155n : pass'
end
subroutine chk
character      ,allocatable::a(:)
allocate(a(32769))
rewind 14
read(14,'(32769(a))') (a(k),k=1,32769)
if (any(a/='3')) print *,1011
end
