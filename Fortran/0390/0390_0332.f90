module m1
integer,parameter::c(3)=[1,2,3]
contains
subroutine ss(a1,a2,a3,k1,k2,k3)
integer,intent(in),optional::a1(3),a2(3),a3(3)
if (k1==1) then
   if (.not.present(a1)) print *,101
   if (any(a1/=c)) print *,501
else
   if (     present(a1)) print *,102
endif
if (k2==1) then
   if (.not.present(a2)) print *,111
   if (any(a2/=c)) print *,501
else
   if (     present(a2)) print *,112
endif
if (k3==1) then
   if (.not.present(a3)) print *,121
   if (any(a3/=c)) print *,501
else
   if (     present(a3)) print *,122
endif
end subroutine
subroutine s1(p1,p2,p3,kk1,kk2,kk3)
integer,allocatable ::a1(:),a2(:),a3(:)
integer,allocatable,optional ::p1(:),p2(:),p3(:)
allocate(a1(3),source=c)
allocate(a2(3),source=c)
allocate(a3(3),source=c)
call ss(a1,a2,a3,1,1,1)
if (any(a1/=c)) print *,131
if (any(a2/=c)) print *,141
if (any(a3/=c)) print *,151
a1=c  
a2=c  
a3=c  
call ss(  k1=0,k2=0,k3=0)
call ss(   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if (any(a2/=c)) print *,241
if (any(a3/=c)) print *,251
a1=c  
a2=c  
a3=c  
call ss(a1=a1,        a3=a3,k1=1,k2=0,k3=1)
if (any(a1/=c)) print *,261
if (any(a3/=c)) print *,262
a1=c  
a2=c  
a3=c  
call ss(a1=a1              ,k1=1,k2=0,k3=0)
if (any(a1/=c)) print *,261
a1=c  
a2=c  
a3=c  
call ss(a3=a3              ,k1=0,k2=0,k3=1)
deallocate(a1,a2,a3)
call ss(a1,a2,a3,  k1=0,k2=0,k3=0)
allocate(a2(3),source=c)
allocate(a3(3),source=c)
call ss(a1,   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if (any(a2/=c)) print *,341
if (any(a3/=c)) print *,351
a2=c  
a3=c  
allocate(a1(3),source=c)
deallocate(a2)
call ss(a1=a1,a2=a2,      a3=a3,k1=1,k2=0,k3=1)
if (any(a1/=c)) print *,361
if (any(a3/=c)) print *,362
a1=c  
deallocate(a3)
call ss(a1,a2,a3     ,k1=1,k2=0,k3=0)
if (any(a1/=c)) print *,461
deallocate(a1)
allocate(a1(3),source=c)
if (allocated(a2))deallocate(a2)
if (allocated(a3))deallocate(a3)
call ss(a1,a2,a3=a3              ,k1=1,k2=0,k3=0)
if (any(a1/=c)) print *,261
!
call ss(p1,p2,p3,kk1,kk2,kk3 )
if (kk1==1) then
if (any(p1/=c)) print *,201
endif
if (kk2==1) then
if (any(p2/=c)) print *,211
endif
if (kk3==1) then
if (any(p3/=c)) print *,221
endif
end subroutine
subroutine s0
integer,allocatable ::p1(:)
integer,allocatable ::p2(:)
integer,allocatable ::p3(:)
call s1(p1,p2,p3,kk1=0,kk2=0,kk3=0)
call s1(         kk1=0,kk2=0,kk3=0)
allocate(p1(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if (any(p1/=c)) print *,301
if (allocated(p1))deallocate(p1)
allocate(p1(3),source=c)
call s1(p1=p1      ,kk1=1,kk2=0,kk3=0)
if (any(p1/=c)) print *,301
if (allocated(p2))deallocate(p1)
allocate(p2(3),source=c)
call s1(p2=p2      ,kk1=0,kk2=1,kk3=0)
if (any(p2/=c)) print *,301
if (allocated(p3))deallocate(p1)
allocate(p3(3),source=c)
call s1(p3=p3      ,kk1=0,kk2=0,kk3=1)
if (any(p3/=c)) print *,301
if (allocated(p1))deallocate(p1)
if (allocated(p2))deallocate(p2)
if (allocated(p3))deallocate(p3)
allocate(p1(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if (any(p1/=c)) print *,301
if (allocated(p1))deallocate(p1)
if (allocated(p2))deallocate(p2)
if (allocated(p3))deallocate(p3)
allocate(p2(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=0)
if (any(p2/=c)) print *,301
if (allocated(p1))deallocate(p1)
if (allocated(p2))deallocate(p2)
if (allocated(p3))deallocate(p3)
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=0,kk3=1)
if (any(p3/=c)) print *,301
if (allocated(p1))deallocate(p1)
if (allocated(p2))deallocate(p2)
if (allocated(p3))deallocate(p3)
allocate(p1(3),source=c)
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=1)
if (any(p1/=c)) print *,301
if (any(p3/=c)) print *,301
if (allocated(p1))deallocate(p1)
if (allocated(p2))deallocate(p2)
if (allocated(p3))deallocate(p3)
allocate(p2(3),source=c)
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=1)
if (any(p2/=c)) print *,301
if (any(p3/=c)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

