subroutine s1
class(*),allocatable::p1(:,:),p2(:,:),p3(:,:),p4(:,:)
allocate(p1(3,3),p2(3,3),stat=k,mold=1)
if (any(ubound(p1)/=[3,3])) print *,301
if (any(ubound(p2)/=[3,3])) print *,302
if (k/=0) print *,311
kk=0
select type(p1)
type is (integer)
kk=2
end select
if (kk/=2) print *,320
kk=0
select type(p2)
type is (integer)
kk=2
end select
if (kk/=2) print *,330

allocate(p3(3,3),p4(3,3),p1(2,2),stat=k,mold=(1,1))
if (any(ubound(p1)/=[3,3])) print *,311
if (any(ubound(p2)/=[3,3])) print *,312
if (any(ubound(p3)/=[3,3])) print *,313
if (any(ubound(p4)/=[3,3])) print *,314
if (k==0) print *,315
kk=0
select type(p3)
type is (complex)
kk=2
end select
if (kk/=2) print *,420
kk=0
select type(p4)
type is (complex)
kk=2
end select
if (kk/=2) print *,430
kk=0
select type(p1)
type is (integer)
kk=2
end select
if (kk/=2) print *,440
kk=0
select type(p2)
type is (integer)
kk=2
end select
if (kk/=2) print *,450

end
call s1
print *,'pass'
end
