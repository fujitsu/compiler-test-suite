subroutine s1
integer(1),allocatable::a(:)
allocate(a(32769))
a=3
write(52,'(32769 b9)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg992m : pass'
end
subroutine chk
integer(1),allocatable::a(:)
allocate(a(32769))
rewind 52
read(52,*) (a(k),k=1,32769)
if (any(a/=11)) print *,1011
end
