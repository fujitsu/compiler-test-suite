subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=3
write(16,'(32769 Z9)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg157n : pass'
end
subroutine chk
integer      ,allocatable::a(:)
allocate(a(32769))
rewind 16
read(16,*) (a(k),k=1,32769)
if (any(a/=3)) print *,1011
end
