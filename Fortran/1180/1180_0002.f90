subroutine s1
write(9,'(32762 b33)') 3,5  ! 8001
end
call s1
call chk
print *,'sngg150n : pass'
end
subroutine chk
integer::a,b
rewind 9
do k=1,1
read(9,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end
