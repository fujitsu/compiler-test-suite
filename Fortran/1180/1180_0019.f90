subroutine s1
character,allocatable::a(:)
!open(1,form='formatted',delim='quote')
allocate(a(32769))
a='3'
1format   (32769 A)
write(30,1          ) a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg179n : pass'
end
subroutine chk
character      ,allocatable::a(:)
allocate(a(32769))
rewind 30
read(30,'(32769(a))') (a(k),k=1,32769)
if (any(a/='3')) print *,1011
end
