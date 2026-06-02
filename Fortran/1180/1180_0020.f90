subroutine s1
logical,allocatable::a(:)
allocate(a(32769))
a=.true.
1format  (32769 L2)
write(31,1          ) a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg180n : pass'
end
subroutine chk
logical   ,allocatable::a(:)
allocate(a(32769))
rewind 31
read(31,*) (a(k),k=1,32769)
if (any(.not.a)) print *,1011
end
