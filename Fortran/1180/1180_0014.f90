subroutine s1
1format(32762 b33)
write(25,1          ) 3,5  ! 8001
end
call s1
call chk
print *,'sngg174n : pass'
end
subroutine chk
integer::a,b
rewind 25
do k=1,1
read(25,*) a,b
if (a/=11) print *,1011
if (b/=101) print *,1012
end do
end
