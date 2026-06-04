subroutine s1
real,allocatable::a(:)
allocate(a(32769))
a=3.
write(29,1          ) a
1format  (32769 G15.8)
deallocate(a)
end
call s1
call chk
print *,'sngg178n : pass'
end
subroutine chk
real      ,allocatable::a(:)
allocate(a(32769))
rewind 29
read(29,*) (a(k),k=1,32769)
if (any(a/=3.)) print *,1011
end
