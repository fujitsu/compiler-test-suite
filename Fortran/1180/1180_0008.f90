subroutine s1
logical,allocatable::a(:)
allocate(a(32769))
a=.true.
write(15,'(32769 L2)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg156n : pass'
end
subroutine chk
logical   ,allocatable::a(:)
allocate(a(32769))
rewind 15
read(15,*) (a(k),k=1,32769)
if (any(.not.a)) print *,1011
end
