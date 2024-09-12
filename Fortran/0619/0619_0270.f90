subroutine s1
type w
   integer::ww=2
end type
type q
   integer::ww
end type
type(w),allocatable::a1(:),a3(:)
type(w),allocatable::b1(:),b3(:)
type(q),allocatable::a2(:)
type(q),allocatable::b2(:)
type(q),allocatable::b4(:),a4(:)
character(100)::x
k=100
allocate(a1(2),a2(3),a3(4),stat=k)
write(1,*)101,k
if (k/=0)print *,101
if (any(ubound(a1)/=2))print *,1021
if (any(a1%ww/=2))print *,11021
write(1,*)1021,ubound(a1)
if (any(ubound(a2)/=3))print *,1022
if (any(a2%ww/=0))print *,11022
a2%ww=-1
write(1,*)1022,ubound(a2)
if (any(ubound(a3)/=4))print *,1023
if (any(a3%ww/=2))print *,11023
write(1,*)1023,ubound(a3)
k=100
allocate(b1(2),b2(3),b3(4),stat=k,errmsg=x)
if (k/=0)print *,201
write(1,*)201,k
if (any(ubound(b1)/=2))print *,2021
if (any(b1%ww/=2))print *,12021
write(1,*)2021,ubound(b1)
if (any(ubound(b2)/=3))print *,2022
if (any(b2%ww/=0))print *,12022
b2%ww=-1
write(1,*)2022,ubound(b2)
if (any(ubound(b3)/=4))print *,2023
if (any(b3%ww/=2))print *,12023
write(1,*)2023,ubound(b3)

k=100
allocate(a4(2),stat=k)
write(1,*)101,k
if (k/=0)print *,101
if (any(ubound(a4)/=2))print *,3021
if (any(a4%ww/=0))print *,13023
a4%ww=-1
!
allocate(b4(2),stat=k,errmsg=x)
if (k/=0)print *,401
if (any(ubound(b4)/=2))print *,4021
if (any(b4%ww/=0))print *,23023
b4%ww=-1
end
call s1
call s1
call s1
call s1
print *,'pass'
end
