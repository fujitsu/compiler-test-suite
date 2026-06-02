write(7,'(32769  F)') 1.0! 8001
call chk
print *,'sngg160n : pass'
end
subroutine chk
real      ,allocatable::a(:)
allocate(a(32769))
rewind 7
read(7,*) (a(k),k=1,1    )
if (any(a(1:1)/=1.)) print *,1011
end
