module m1
integer,parameter::c=3
type x
integer::x1
integer,allocatable ::a1,a2,a3
end type
contains
subroutine ss(a1,a2,a3,k1,k2,k3)
integer,optional::a1,a2,a3
if (k1==1) then
   if (.not.present(a1)) print *,101
   a1=a1+1
else
   if (     present(a1)) print *,102
endif
if (k2==1) then
   if (.not.present(a2)) print *,111
   a2=a2+1
else
   if (     present(a2)) print *,112
endif
if (k3==1) then
   if (.not.present(a3)) print *,121
   a3=a3+1
else
   if (     present(a3)) print *,122
endif
end subroutine
subroutine s1(p1,p2,p3,kk1,kk2,kk3)
integer,allocatable,optional ::p1,p2,p3
type(x),pointer::v
allocate(v)
allocate(v%a1,source=c)
allocate(v%a2,source=c)
allocate(v%a3,source=c)
call ss(v%a1,v%a2,v%a3,1,1,1)
if ((v%a1/=c+1)) print *,131
if ((v%a2/=c+1)) print *,141
if ((v%a3/=c+1)) print *,151
v%a1=c  
v%a2=c  
v%a3=c  
call ss(  k1=0,k2=0,k3=0)
call ss(   a2=v%a2,a3=v%a3,k1=0,k2=1,k3=1)
if ((v%a2/=c+1)) print *,241
if ((v%a3/=c+1)) print *,251
v%a1=c  
v%a2=c  
v%a3=c  
call ss(a1=v%a1,        a3=v%a3,k1=1,k2=0,k3=1)
if ((v%a1/=c+1)) print *,261
if ((v%a3/=c+1)) print *,262
v%a1=c  
v%a2=c  
v%a3=c  
call ss(a1=v%a1              ,k1=1,k2=0,k3=0)
if ((v%a1/=c+1)) print *,261
v%a1=c  
v%a2=c  
v%a3=c  
call ss(a3=v%a3              ,k1=0,k2=0,k3=1)
deallocate(v%a1,v%a2,v%a3)
call ss(v%a1,v%a2,v%a3,  k1=0,k2=0,k3=0)
allocate(v%a2,source=c)
allocate(v%a3,source=c)
call ss(v%a1,   a2=v%a2,a3=v%a3,k1=0,k2=1,k3=1)
if ((v%a2/=c+1)) print *,341
if ((v%a3/=c+1)) print *,351
v%a2=c  
v%a3=c  
allocate(v%a1,source=c)
deallocate(v%a2)
call ss(a1=v%a1,a2=v%a2,      a3=v%a3,k1=1,k2=0,k3=1)
if ((v%a1/=c+1)) print *,361
if ((v%a3/=c+1)) print *,362
v%a1=c  
deallocate(v%a3)
call ss(v%a1,v%a2,v%a3     ,k1=1,k2=0,k3=0)
if ((v%a1/=c+1)) print *,461
deallocate(v%a1)
allocate(v%a1,source=c)
if (allocated(v%a2))deallocate(v%a2)
if (allocated(v%a3))deallocate(v%a3)
call ss(v%a1,v%a2,a3=v%a3              ,k1=1,k2=0,k3=0)
if ((v%a1/=c+1)) print *,261
!
call ss(p1,p2,p3,kk1,kk2,kk3 )
if (kk1==1) then
if ((p1/=c+1)) print *,201
endif
if (kk2==1) then
if ((p2/=c+1)) print *,211
endif
if (kk3==1) then
if ((p3/=c+1)) print *,221
endif
end subroutine
subroutine s0
type y
integer,pointer::y1
integer,allocatable ::p1
integer,allocatable ::p2
integer,allocatable ::p3
end type
type(y),pointer::z
integer,allocatable ::x1,x2,x3
allocate(z)
call s1(z%p1,z%p2,z%p3,kk1=0,kk2=0,kk3=0)
call s1(x1,x2,x3,         kk1=0,kk2=0,kk3=0)
allocate(z%p1,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
allocate(z%p1,source=c)
call s1(p2=x2,p3=x3,p1=z%p1      ,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c+1)) print *,301
if (allocated(z%p2))deallocate(z%p1)
allocate(z%p2,source=c)
call s1(x1,p3=x3,p2=z%p2      ,kk1=0,kk2=1,kk3=0)
if ((z%p2/=c+1)) print *,301
if (allocated(z%p3))deallocate(z%p1)
allocate(z%p3,source=c)
call s1(x1,x2,p3=z%p3      ,kk1=0,kk2=0,kk3=1)
if ((z%p3/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
if (allocated(z%p2))deallocate(z%p2)
if (allocated(z%p3))deallocate(z%p3)
allocate(z%p1,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
if (allocated(z%p2))deallocate(z%p2)
if (allocated(z%p3))deallocate(z%p3)
allocate(z%p2,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=1,kk3=0)
if ((z%p2/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
if (allocated(z%p2))deallocate(z%p2)
if (allocated(z%p3))deallocate(z%p3)
allocate(z%p3,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=0,kk3=1)
if ((z%p3/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
if (allocated(z%p2))deallocate(z%p2)
if (allocated(z%p3))deallocate(z%p3)
allocate(z%p1,source=c)
allocate(z%p3,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=1,kk2=0,kk3=1)
if ((z%p1/=c+1)) print *,301
if ((z%p3/=c+1)) print *,301
if (allocated(z%p1))deallocate(z%p1)
if (allocated(z%p2))deallocate(z%p2)
if (allocated(z%p3))deallocate(z%p3)
allocate(z%p2,source=c)
allocate(z%p3,source=c)
call s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=1,kk3=1)
if ((z%p2/=c+1)) print *,301
if ((z%p3/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

