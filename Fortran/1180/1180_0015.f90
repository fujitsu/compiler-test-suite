subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=3
1format  (32769 I12)
write(26,1          ) a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg175n : pass'
end
subroutine chk
integer   ,allocatable::a(:)
allocate(a(32769))
rewind 26
read(26,*) (a(k),k=1,32769)
if (any(a/=3)) print *,1011
end
