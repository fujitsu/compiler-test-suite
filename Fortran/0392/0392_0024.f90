subroutine s1
integer,allocatable::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
allocate(p1(3,3),p2(3,3),stat=k,mold=1)
if (any(ubound(p1)/=[3,3])) print *,301
if (any(ubound(p2)/=[3,3])) print *,302
if (k/=0) print *,311
allocate(p3(3,3),p4(3,3),p1(2,2),stat=k,mold=1)
if (any(ubound(p1)/=[3,3])) print *,311
if (any(ubound(p2)/=[3,3])) print *,312
if (any(ubound(p3)/=[3,3])) print *,313
if (any(ubound(p4)/=[3,3])) print *,314
if (k==0) print *,315

end
call s1
print *,'pass'
end
