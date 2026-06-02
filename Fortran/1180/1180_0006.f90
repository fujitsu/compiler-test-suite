subroutine s1
real,allocatable::a(:)
allocate(a(32769))
a=3.
write(13,'(32769 G15.8)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg154n : pass'
end
subroutine chk
real      ,allocatable::a(:)
allocate(a(32769))
rewind 13
read(13,*) (a(k),k=1,32769)
if (any(a/=3.)) print *,1011
end
