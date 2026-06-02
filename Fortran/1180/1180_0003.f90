subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=3
write(10,'(32769 I11)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg151n : pass'
end
subroutine chk
integer   ,allocatable::a(:)
allocate(a(32769))
rewind 10
read(10,*) (a(k),k=1,32769)
if (any(a/=3)) print *,1011
end
