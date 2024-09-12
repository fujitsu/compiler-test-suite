module m1
integer,parameter::c=3
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
integer,pointer ::a1,a2,a3
integer,pointer,optional ::p1,p2,p3
allocate(a1,source=c)
allocate(a2,source=c)
allocate(a3,source=c)
call ss(a1,a2,a3,1,1,1)
if ((a1/=c+1)) print *,131
if ((a2/=c+1)) print *,141
if ((a3/=c+1)) print *,151
a1=c  
a2=c  
a3=c  
call ss(  k1=0,k2=0,k3=0)
call ss(   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if ((a2/=c+1)) print *,241
if ((a3/=c+1)) print *,251
a1=c  
a2=c  
a3=c  
call ss(a1=a1,        a3=a3,k1=1,k2=0,k3=1)
if ((a1/=c+1)) print *,261
if ((a3/=c+1)) print *,262
a1=c  
a2=c  
a3=c  
call ss(a1=a1              ,k1=1,k2=0,k3=0)
if ((a1/=c+1)) print *,261
a1=c  
a2=c  
a3=c  
call ss(a3=a3              ,k1=0,k2=0,k3=1)
a1=>null()
a2=>null()
a3=>null()
call ss(a1,a2,a3,  k1=0,k2=0,k3=0)
allocate(a2,source=c)
allocate(a3,source=c)
call ss(a1,   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if ((a2/=c+1)) print *,341
if ((a3/=c+1)) print *,351
a2=c  
a3=c  
allocate(a1,source=c)
a2=>null()
call ss(a1=a1,a2=a2,      a3=a3,k1=1,k2=0,k3=1)
if ((a1/=c+1)) print *,361
if ((a3/=c+1)) print *,362
a1=c  
a2=>null()
a3=>null()
call ss(a1,a2,a3     ,k1=1,k2=0,k3=0)
if ((a1/=c+1)) print *,461
allocate(a1,source=c)
a2=>null()
a3=>null()
call ss(a1,a2,a3=a3              ,k1=1,k2=0,k3=0)
if ((a1/=c+1)) print *,261
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
integer,pointer ::p1=>null()
integer,pointer ::p2=>null()
integer,pointer ::p3=>null()
call s1(p1,p2,p3,kk1=0,kk2=0,kk3=0)
call s1(         kk1=0,kk2=0,kk3=0)
allocate(p1,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if ((p1/=c+1)) print *,301
allocate(p1,source=c)
call s1(p1=p1      ,kk1=1,kk2=0,kk3=0)
if ((p1/=c+1)) print *,301
allocate(p2,source=c)
call s1(p2=p2      ,kk1=0,kk2=1,kk3=0)
if ((p2/=c+1)) print *,301
allocate(p3,source=c)
call s1(p3=p3      ,kk1=0,kk2=0,kk3=1)
if ((p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p1,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if ((p1/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p2,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=0)
if ((p2/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p3,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=0,kk3=1)
if ((p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p1,source=c)
allocate(p3,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=1)
if ((p1/=c+1)) print *,301
if ((p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p2,source=c)
allocate(p3,source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=1)
if ((p2/=c+1)) print *,301
if ((p3/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

