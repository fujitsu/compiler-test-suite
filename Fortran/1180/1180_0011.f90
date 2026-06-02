subroutine s1
integer,allocatable::a(:)
allocate(a(32769))
a=9
write(18,'(32769 O2)') a  ! 8001
deallocate(a)
end
call s1
call chk
print *,'sngg159n : pass'
end
subroutine chk
integer      ,allocatable::a(:)
allocate(a(32769))
rewind 18
read(18,'(32769i2)') (a(k),k=1,32769)
if (any(a/=11)) print *,1011
end
