subroutine s1
real,allocatable::a(:)
allocate(a(32769))
a=3.
1format  (32769 d15.8)
write(39,1          ) a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg188n : pass'
end
subroutine chk
real      ,allocatable::a(:)
allocate(a(32769))
rewind 39
read(39,*) (a(k),k=1,32769)
if (any(a/=3.)) print *,1011
end
