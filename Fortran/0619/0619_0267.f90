subroutine s1
type w
   integer,allocatable::ww(:)
end type
type(w),allocatable::a1(:),a2(:),a3(:),a4(:)
type(w),allocatable::b1(:),b2(:),b3(:),b4(:)
type(w),allocatable::c1(:)
character(100)::x
k=100
allocate(a1(2),a2(3),a3(4),stat=k)
write(1,*)101,k
if (k/=0)print *,101
if (any(ubound(a1)/=2))print *,1021
write(1,*)1021,ubound(a1)
if (any(ubound(a2)/=3))print *,1022
write(1,*)1022,ubound(a2)
if (any(ubound(a3)/=4))print *,1023
write(1,*)1023,ubound(a3)
k=100
allocate(b1(2),b2(3),b3(4),stat=k,errmsg=x)
if (k/=0)print *,201
write(1,*)201,k
if (any(ubound(b1)/=2))print *,2021
write(1,*)2021,ubound(b1)
if (any(ubound(b2)/=3))print *,2022
write(1,*)2022,ubound(b2)
if (any(ubound(b3)/=4))print *,2023
write(1,*)2023,ubound(b3)

k=100
allocate(a4(2),stat=k)
write(1,*)101,k
if (k/=0)print *,101
if (any(ubound(a4)/=2))print *,3021
!
allocate(b4(2),stat=k,errmsg=x)
if (k/=0)print *,401
if (any(ubound(b4)/=2))print *,4021
end
call s1
print *,'pass'
end
