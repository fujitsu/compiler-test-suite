subroutine s1
integer(1),allocatable::a(:)
allocate(a(32769))
a=3
write(38,1             ) a  ! 8001
1format   (32769 (i1))
deallocate(a)
end
call s1
call chk
print *,'sngg187n : pass'
end
subroutine chk
character(32769),allocatable::a
allocate(a)
rewind 38
read(38,'(a )') a
if (   a/=repeat('3',32769)) print *,1011
end
