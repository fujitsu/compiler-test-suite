subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=3
1format  (32769 Z9)
write(32,1        ) a
deallocate(a)
end
call s1
call chk
print *,'sngg181n : pass'
end
subroutine chk
integer      ,allocatable::a(:)
allocate(a(32769))
rewind 32
read(32,*) (a(k),k=1,32769)
if (any(a/=3)) print *,1011
end
