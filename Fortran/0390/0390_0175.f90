module m1
contains
subroutine s1(b0,b1,b2,d0,d1,d2,e1,e2)
integer,allocatable:: a0
integer,allocatable:: a1(:)
integer,allocatable:: a2(:,:)
integer,allocatable:: b0
integer,allocatable:: b1(:)
integer,allocatable:: b2(:,:)
integer,pointer           :: c0
integer,pointer,contiguous:: c1(:)
integer,pointer,contiguous:: c2(:,:)
integer,pointer           :: d0
integer,pointer,contiguous:: d1(:)
integer,pointer,contiguous:: d2(:,:)
integer        ,contiguous:: e1(:)
integer        ,contiguous:: e2(:,:)

allocate(a0,a1(2),a2(2,2),b0,b1(2),b2(2,2),c0,c1(2),c2(2,2),d0,d1(2),d2(2,2))
kk=2
a0=kk
a1(2)=kk
a1   =kk
a1(:)=kk
a2(2,2)=kk
a2   =kk
a2(:,:)=kk
b0=kk
b1(2)=kk
b1   =kk
b1(:)=kk
b2(2,2)=kk
b2   =kk
b2(:,:)=kk
c0=kk
c1(2)=kk
c1   =kk
c1(:)=kk
c2(2,2)=kk
c2   =kk
c2(:,:)=kk
d0=kk
d1(2)=kk
d1   =kk
d1(:)=kk
d2(2,2)=kk
d2   =kk
d2(:,:)=kk
e1(2)=kk
e1   =kk
e1(:)=kk
e2(2,2)=kk
e2   =kk
e2(:,:)=kk
!$omp parallel default(private)
allocate(                                  c0,c1(2),c2(2,2),d0,d1(2),d2(2,2))
kk=3
a0=kk
a1(2)=kk
a1   =kk
a1(:)=kk
a2(2,2)=kk
a2   =kk
a2(:,:)=kk
b0=kk
b1(2)=kk
b1   =kk
b1(:)=kk
b2(2,2)=kk
b2   =kk
b2(:,:)=kk
c0=kk
c1(2)=kk
c1   =kk
c1(:)=kk
c2(2,2)=kk
c2   =kk
c2(:,:)=kk
d0=kk
d1(2)=kk
d1   =kk
d1(:)=kk
d2(2,2)=kk
d2   =kk
d2(:,:)=kk
e1(2)=kk
e1   =kk
e1(:)=kk
e2(2,2)=kk
e2   =kk
e2(:,:)=kk
if (kk/=3) print *,1001
if (a0/=3) print *,1002
if (b0/=3) print *,1003
if (c0/=3) print *,1004
if (d0/=3) print *,1005
if (any(a1/=3)) print *,1012
if (any(b1/=3)) print *,1013
if (any(c1/=3)) print *,1014
if (any(d1/=3)) print *,1015
if (any(e1/=3)) print *,1016
if (any(a2/=3)) print *,1022
if (any(b2/=3)) print *,1023
if (any(c2/=3)) print *,1024
if (any(d2/=3)) print *,1025
if (any(e2/=3)) print *,1026
!$omp end parallel
if (kk/=2) print *,1101
if (a0/=2) print *,1102
if (b0/=2) print *,1103
if (c0/=2) print *,1104
if (d0/=2) print *,1105
if (any(a1/=2)) print *,1112
if (any(b1/=2)) print *,1113
if (any(c1/=2)) print *,1114
if (any(d1/=2)) print *,1115
if (any(e1/=2)) print *,1116
if (any(a2/=2)) print *,1122
if (any(b2/=2)) print *,1123
if (any(c2/=2)) print *,1124
if (any(d2/=2)) print *,1125
if (any(e2/=2)) print *,1126
end subroutine
end
subroutine s0
use m1
integer,allocatable:: b0
integer,allocatable:: b1(:)
integer,allocatable:: b2(:,:)
integer,pointer           :: d0
integer,pointer,contiguous:: d1(:)
integer,pointer,contiguous:: d2(:,:)
integer                   :: e1(2)
integer                   :: e2(2,2)
call       s1(b0,b1,b2,d0,d1,d2,e1,e2)
end
call s0
print *,'pass'
end
