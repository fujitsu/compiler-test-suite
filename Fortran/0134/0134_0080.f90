module m1
type x
 character(2),allocatable::c1(:)
 character(2),allocatable::c2(:,:)
 character(2),allocatable::c3(:,:,:)
end type
 type(x)::v
integer n(2)
character(2),allocatable::c1(:)
character(2),allocatable::c2(:,:)
character(2),allocatable::c3(:,:,:)
integer::k=2
end 
subroutine s0
use m1
n=0
allocate(c1(2),v%c1(2))
c1=(/'1,','2 '/)
read(c1(k),'(i2)') n(2)
if (n(2)/=2)print *,'error-002'
v%c1=(/'3,','4 '/)
read(v%c1(k),'(i2)') n(2)
if (n(2)/=4)print *,'error-004'
n=n+2
write(c1(k),'(i1)') n(k)
if (c1(2)/='6')print *,'error-006'
n=n+2
write(v%c1(k),'(i1)') n(k)
if (v%c1(2)/='8')print *,'error-008'
deallocate(c1,v%c1)
end
subroutine s1
use m1
allocate(c1(2),v%c1(2))
c1=(/'1,','2 '/)
read(c1,'(i1/i1)') n
if (n(1)/=1)print *,'error-01'
if (n(2)/=2)print *,'error-02'
v%c1=(/'3,','4 '/)
read(v%c1,'(i1/i1)') n
if (n(1)/=3)print *,'error-03'
if (n(2)/=4)print *,'error-04'
n=n+2
write(c1,'(i1/i1)') n
if (c1(1)/='5')print *,'error-05'
if (c1(2)/='6')print *,'error-06'
n=n+2
write(v%c1,'(i1/i1)') n
if (v%c1(1)/='7')print *,'error-07'
if (v%c1(2)/='8')print *,'error-08'
deallocate(c1,v%c1)
end
subroutine s11
use m1
allocate(c1(2),v%c1(2))
c1=(/'1,','2 '/)
read(c1(:),'(i1/i1)') n
if (n(1)/=1)print *,'error-101'
if (n(2)/=2)print *,'error-102'
v%c1=(/'3,','4 '/)
read(v%c1(:),'(i1/i1)') n
if (n(1)/=3)print *,'error-103'
if (n(2)/=4)print *,'error-104'
n=n+2
write(c1(:),'(i1/i1)') n
if (c1(1)/='5')print *,'error-105'
if (c1(2)/='6')print *,'error-106'
n=n+2
write(v%c1(:k),'(i1/i1)') n
if (v%c1(1)/='7')print *,'error-107'
if (v%c1(2)/='8')print *,'error-108'
deallocate(c1,v%c1)
end
subroutine s12
use m1
allocate(c1(2),v%c1(2))
c1=(/'1,','2 '/)
read(c1(:k),'(i1/i1)') n
if (n(1)/=1)print *,'error-201'
if (n(2)/=2)print *,'error-202'
v%c1=(/'3,','4 '/)
read(v%c1(:k),'(i1/i1)') n
if (n(1)/=3)print *,'error-203'
if (n(2)/=4)print *,'error-204'
n=n+2
write(c1(:k),'(i1/i1)') n
if (c1(1)/='5')print *,'error-205'
if (c1(2)/='6')print *,'error-206'
n=n+2
write(v%c1(:k),'(i1/i1)') n
if (v%c1(1)/='7')print *,'error-207'
if (v%c1(2)/='8')print *,'error-208'
deallocate(c1,v%c1)
end
call s0
call s0
call s1
call s11
call s12
print *,'pass'
end
