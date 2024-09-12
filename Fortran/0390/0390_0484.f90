module m1
integer,parameter::c=3
type x
integer :: x1
integer,pointer ::a1,a2,a3
end type
contains
function ss(a1,a2,a3,k1,k2,k3) &
result(r)
integer,intent(in),optional::a1,a2,a3
if (k1==1) then
   if (.not.present(a1)) print *,101
   if ((a1/=c)) print *,3001
else
   if (     present(a1)) print *,102
endif
if (k2==1) then
   if (.not.present(a2)) print *,111
   if ((a2/=c)) print *,3001
else
   if (     present(a2)) print *,112
endif
if (k3==1) then
   if (.not.present(a3)) print *,121
   if ((a3/=c)) print *,3001
else
   if (     present(a3)) print *,122
endif
r=0
end function
function s1(p1,p2,p3,kk1,kk2,kk3) &
result(r)
integer,pointer,optional ::p1,p2,p3
type(x),pointer::v
allocate(v)
allocate(v%a1,source=c)
allocate(v%a2,source=c)
allocate(v%a3,source=c)
call= ss(v%a1,v%a2,v%a3,1,1,1)
if ((v%a1/=c)) print *,131
if ((v%a2/=c)) print *,141
if ((v%a3/=c)) print *,151
v%a1=c  
v%a2=c  
v%a3=c  
call= ss(  k1=0,k2=0,k3=0)
call= ss(   a2=v%a2,a3=v%a3,k1=0,k2=1,k3=1)
if ((v%a2/=c)) print *,241
if ((v%a3/=c)) print *,251
v%a1=c  
v%a2=c  
v%a3=c  
call= ss(a1=v%a1,        a3=v%a3,k1=1,k2=0,k3=1)
if ((v%a1/=c)) print *,261
if ((v%a3/=c)) print *,262
v%a1=c  
v%a2=c  
v%a3=c  
call= ss(v%a1              ,k1=1,k2=0,k3=0)
if ((v%a1/=c)) print *,261
v%a1=c  
v%a2=c  
v%a3=c  
call= ss(a3=v%a3              ,k1=0,k2=0,k3=1)
v%a1=>null()
v%a2=>null()
v%a3=>null()
call= ss(v%a1,v%a2,v%a3,  k1=0,k2=0,k3=0)
allocate(v%a2,source=c)
allocate(v%a3,source=c)
call= ss(v%a1,   a2=v%a2,a3=v%a3,k1=0,k2=1,k3=1)
if ((v%a2/=c)) print *,341
if ((v%a3/=c)) print *,351
v%a2=c  
v%a3=c  
allocate(v%a1,source=c)
v%a2=>null()
call= ss(a1=v%a1,a2=v%a2,      a3=v%a3,k1=1,k2=0,k3=1)
if ((v%a1/=c)) print *,361
if ((v%a3/=c)) print *,362
v%a1=c  
v%a2=>null()
v%a3=>null()
call= ss(v%a1,v%a2,v%a3     ,k1=1,k2=0,k3=0)
if ((v%a1/=c)) print *,461
allocate(v%a1,source=c)
v%a2=>null()
v%a3=>null()
call= ss(v%a1,v%a2,a3=v%a3              ,k1=1,k2=0,k3=0)
if ((v%a1/=c)) print *,261
!
call= ss(p1,p2,p3,kk1,kk2,kk3 )
if (kk1==1) then
if ((p1/=c)) print *,201
endif
r=0
if (call/=0) print *,1
if (kk2==1) then
if ((p2/=c)) print *,211
endif
if (kk3==1) then
if ((p3/=c)) print *,221
endif
end function
function s0() &
result(r)
type y
integer,pointer ::p1=>null()
integer,pointer ::p2=>null()
integer,pointer ::p3=>null()
end type
type(y),pointer:: z
allocate(z)
call= s1(z%p1,z%p2,z%p3,kk1=0,kk2=0,kk3=0)
call= s1(         kk1=0,kk2=0,kk3=0)
allocate(z%p1,source=c)
call= s1(z%p1,z%p2,p3=z%p3,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c)) print *,301
allocate(z%p1,source=c)
call= s1(p1=z%p1      ,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c)) print *,301
allocate(z%p2,source=c)
call= s1(p2=z%p2      ,kk1=0,kk2=1,kk3=0)
if ((z%p2/=c)) print *,301
allocate(z%p3,source=c)
call= s1(p3=z%p3      ,kk1=0,kk2=0,kk3=1)
if ((z%p3/=c)) print *,301
z%p1=>null()
z%p2=>null()
z%p3=>null()
allocate(z%p1,source=c)
call= s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=1,kk2=0,kk3=0)
if ((z%p1/=c)) print *,301
z%p1=>null()
z%p2=>null()
z%p3=>null()
allocate(z%p2,source=c)
call= s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=1,kk3=0)
if ((z%p2/=c)) print *,301
z%p1=>null()
z%p2=>null()
z%p3=>null()
allocate(z%p3,source=c)
call= s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=0,kk3=1)
if ((z%p3/=c)) print *,301
z%p1=>null()
z%p2=>null()
z%p3=>null()
allocate(z%p1,source=c)
allocate(z%p3,source=c)
call= s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=1,kk2=0,kk3=1)
if ((z%p1/=c)) print *,301
if ((z%p3/=c)) print *,301
z%p1=>null()
z%p2=>null()
z%p3=>null()
allocate(z%p2,source=c)
allocate(z%p3,source=c)
call= s1(p1=z%p1,p2=z%p2,p3=z%p3,kk1=0,kk2=1,kk3=1)
if ((z%p2/=c)) print *,301
If ((z%p3/=c)) print *,301
r=0
if (call/=0) print *,1
end function
end
use m1
call= s0()
if (call/=0) print *,1
print *,'pass'
end

