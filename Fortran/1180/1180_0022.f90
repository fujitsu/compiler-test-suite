subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=3
write(33,1          ) a  ! 8001
1format  (32769 O12)
deallocate(a)
end
call s1
call chk
print *,'sngg182n : pass'
end
subroutine chk
integer      ,allocatable::a(:)
allocate(a(32769))
rewind 33
read(33,*) (a(k),k=1,32769)
if (any(a/=3)) print *,1011
end
