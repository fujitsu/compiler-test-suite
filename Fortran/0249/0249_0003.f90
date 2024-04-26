subroutine s1
integer,allocatable::p1(:,:),p2(:,:),p3(:,:)
 integer::kf2(3,3)
type tt
 integer::kf(3,3)
end type

type tt2
 type(tt) :: o1
end type

type(tt2) :: obj

allocate(p1,stat=k,mold=obj%o1%kf(:,:))
allocate(p2,stat=k,mold=kf2(:,:))
allocate(p3,stat=k,mold=kf2)

if (any(ubound(p1)/=[3,3])) print *,301
if (any(ubound(p2)/=[3,3])) print *,302
if (any(ubound(p3)/=[3,3])) print *,303
if (k/=0) print *,311
end
call s1
print *,'pass'
end

