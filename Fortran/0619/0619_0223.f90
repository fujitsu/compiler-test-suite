subroutine s1
integer,allocatable::a(:)
integer(1)::ios
integer(8)::ios2(2)
integer(4)::ios3(2)
allocate(a(2),stat=ios)
if (ios/=0)print *,101
k=2
allocate(a(2),stat=ios2(k))
if (ios2(2)==0)print *,102
allocate(a(2),stat=ios3(k))
if (ios3(2)==0)print *,103
end
call s1
print *,'pass'
end
