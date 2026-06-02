subroutine s1
integer(1),allocatable::a(:)
allocate(a(32769))
a=3
write(37,1          ) a  ! 8001
1format  (32769 b9)
deallocate(a)
end
call s1
call chk
print *,'sngg186n : pass'
end
subroutine chk
integer(1),allocatable::a(:)
allocate(a(32769))
rewind 37
read(37,*) (a(k),k=1,32769)
if (any(a/=11)) print *,1011
end
