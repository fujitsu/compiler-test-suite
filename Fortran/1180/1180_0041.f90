subroutine s1
integer(1),allocatable::a(:)
allocate(a(33024))
a=3
write(53,'(33024 b9)') a  ! 8100
deallocate(a)
end
call s1
call chk
print *,'sngg993m : pass'
end
subroutine chk
integer(1),allocatable::a(:)
allocate(a(33024))
rewind 53
read(53,*) (a(k),k=1,33024)
if (any(a/=11)) print *,1011
end
