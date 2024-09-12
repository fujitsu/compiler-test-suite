subroutine s1(k,i2)
integer,allocatable::a1(:),a2(:),a3(:),a4(:)
integer,allocatable::b1(:),b2(:),b3(:),b4(:)
integer,allocatable::c1(:)
character(100)::x
integer(4)::k(i2,i2)
k=100
allocate(a1(2),a2(3),a3(4),stat=k(i2,i2))
write(1,*)101,k(i2,i2)
if (k(i2,i2)/=0)print *,101
if (any(ubound(a1)/=2))print *,1021
write(1,*)1021,ubound(a1)
if (any(ubound(a2)/=3))print *,1022
write(1,*)1022,ubound(a2)
if (any(ubound(a3)/=4))print *,1023
write(1,*)1023,ubound(a3)
allocate(a4(10),a2(13),a3(14),stat=k(i2,i2))
write(1,*)111,k(i2,i2)
if (k(i2,i2)==0)print *,111
if (any(ubound(a1)/=2))print *,1121
write(1,*)1121,ubound(a1)
if (any(ubound(a2)/=3))print *,1122
write(1,*)1122,ubound(a2)
if (any(ubound(a3)/=4))print *,1123
write(1,*)1123,ubound(a3)
if (any(ubound(a4)/=10))print *,1124
write(1,*)1124,ubound(a4)
k(i2,i2)=100
allocate(b1(2),b2(3),b3(4),stat=k(i2,i2),errmsg=x)
if (k(i2,i2)/=0)print *,201
write(1,*)201,k(i2,i2)
if (any(ubound(b1)/=2))print *,2021
write(1,*)2021,ubound(b1)
if (any(ubound(b2)/=3))print *,2022
write(1,*)2022,ubound(b2)
if (any(ubound(b3)/=4))print *,2023
write(1,*)2023,ubound(b3)
allocate(b4(10),b2(13),b3(14),stat=k(i2,i2))
if (k(i2,i2)==0)print *,211
write(1,*)211,k(i2,i2)
if (any(ubound(b1)/=2))print *,2121
write(1,*)2121,ubound(b1)
if (any(ubound(b2)/=3))print *,2122
write(1,*)2122,ubound(b2)
if (any(ubound(b3)/=4))print *,2123
write(1,*)2123,ubound(b3)
if (any(ubound(b4)/=10))print *,2124
write(1,*)2124,ubound(b4)
write(1,*)k(i2,i2)
allocate(c1(2),stat=k(i2,i2))
if (k(i2,i2)/=0)print *,301
if (any(ubound(c1)/=2))print *,3121
allocate(c1(3),stat=k(i2,i2))
if (k(i2,i2)==0)print *,401
if (any(ubound(c1)/=2))print *,3122
end
integer(4)::k(2,2)
call s1(k,2)
print *,'pass'
end
