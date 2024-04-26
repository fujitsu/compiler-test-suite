subroutine s1
integer:: a(4)=[2,6,4,6]
intrinsic findloc
write(1,*)kind(findloc( a , 6 ,kind=1))
write(1,*)kind(findloc( a , 6 ,kind=2))
write(1,*)kind(findloc( a , 6 ,kind=4))
write(1,*)kind(findloc( a , 6 ,kind=8))
end
call s1
rewind 1
read(1,*) n;if (n/=1) print *,101
read(1,*) n;if (n/=2) print *,102
read(1,*) n;if (n/=4) print *,103
read(1,*) n;if (n/=8) print *,104

print *,'pass'
end
