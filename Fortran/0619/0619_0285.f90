subroutine s1
integer,allocatable::a1(:),a2(:)
character(100)::x
k=100
allocate(a1(2),a2(3),stat=k)
if (k/=0)print *,101
if (any(ubound(a1)/=2))print *,1021
if (any(ubound(a2)/=3))print *,1022
end
call s1
write(6,*)'pass'
end
