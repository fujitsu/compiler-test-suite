subroutine s1
1 format (       (i1) )
2format  (33  (i1) )
write(23,1               ) 3
write(23,2            ) 3
end
call s1
call chk
print *,'sngg172n : pass'
end
subroutine chk
integer::a
rewind 23
do k=1,2
read(23,*) a
if (a/=3) print *,1011
end do
end
