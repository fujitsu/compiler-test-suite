subroutine s1
integer(1),allocatable::a(:)
allocate(a(32769))
a=3
write(54,'(32769 (i1))') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg994m : pass'
end
subroutine chk
character(32769),allocatable::a
allocate(a)
rewind 54
read(54,'(a )') a
if (   a/=repeat('3',32769)) print *,1011
end
