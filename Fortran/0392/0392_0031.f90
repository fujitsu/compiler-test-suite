subroutine s1
integer,allocatable::p1(:,:)
integer::kf(3,3)
allocate(p1,stat=k,mold=kf)
if (any(ubound(p1)/=[3,3])) print *,301
if (k/=0) print *,311
end
call s1
print *,'pass'
end
