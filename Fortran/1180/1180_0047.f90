subroutine s1
real      ,allocatable::a(:)
allocate(a(33024))
a=3.
write(59,'(33024 d15.8)') a  ! 8100
deallocate(a)
end
call s1
call chk
print *,'sngg999m : pass'
end
subroutine chk
real      ,allocatable::a(:)
allocate(a(33024))
rewind 59
read(59,*) (a(k),k=1,33024)
if (any(a/=3.)) print *,1011
end
