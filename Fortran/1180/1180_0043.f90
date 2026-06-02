subroutine s1
integer(1),allocatable::a(:)
allocate(a(33024))
a=3
write(55,'(33024 (i1))') a  ! 8100
deallocate(a)
end
call s1
call chk
print *,'sngg995m : pass'
end
subroutine chk
character(33024),allocatable::a
allocate(a)
rewind 55
read(55,'(a )') a
if (   a/=repeat('3',33024)) print *,1011
end
