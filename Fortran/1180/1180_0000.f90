subroutine s1
write(7,'(       (i1) )') 3
write(7,'(33  (i1) )') 3  ! 80FF
end
call s1
call chk
print *,'sngg148n : pass'
end
subroutine chk
integer::a
rewind 7
do k=1,2
read(7,*) a
if (a/=3) print *,1011
end do
end
