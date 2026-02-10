module m1
integer,parameter::c(3)=[1,2,3]
contains
subroutine ss(a1,a2,a3,k1,k2,k3)
integer,intent(out),optional::a1(:),a2(:),a3(:)
if (k1==1) then
   if (.not.present(a1)) print *,101
   a1=c+1
else
   if (     present(a1)) print *,102
endif
if (k2==1) then
   if (.not.present(a2)) print *,111
   a2=c+1
else
   if (     present(a2)) print *,112
endif
if (k3==1) then
   if (.not.present(a3)) print *,121
   a3=c+1
else
   if (     present(a3)) print *,122
endif
end subroutine
subroutine s1(p1,p2,p3,kk1,kk2,kk3)
integer,pointer ::a1(:),a2(:),a3(:)
integer,pointer,optional ::p1(:),p2(:),p3(:)
allocate(a1(3),source=c)
allocate(a2(3),source=c)
allocate(a3(3),source=c)
call ss(a1,a2,a3,1,1,1)
if (any(a1/=c+1  )) print *,131
if (any(a2/=c+1  )) print *,141
if (any(a3/=c+1  )) print *,151
a1=c  
a2=c  
a3=c  
call ss(  k1=0,k2=0,k3=0)
call ss(   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if (any(a2/=c+1  )) print *,241
if (any(a3/=c+1  )) print *,251
a1=c  
a2=c  
a3=c  
call ss(a1=a1,        a3=a3,k1=1,k2=0,k3=1)
if (any(a1/=c+1  )) print *,261
if (any(a3/=c+1  )) print *,262
a1=c  
a2=c  
a3=c  
call ss(a1=a1              ,k1=1,k2=0,k3=0)
if (any(a1/=c+1  )) print *,261
a1=c  
a2=c  
a3=c  
call ss(a3=a3              ,k1=0,k2=0,k3=1)
a1=>null()
a2=>null()
a3=>null()
call ss(a1,a2,a3,  k1=0,k2=0,k3=0)
allocate(a2(3),source=c)
allocate(a3(3),source=c)
call ss(a1,   a2=a2,a3=a3,k1=0,k2=1,k3=1)
if (any(a2/=c+1  )) print *,341
if (any(a3/=c+1  )) print *,351
a2=c  
a3=c  
allocate(a1(3),source=c)
a2=>null()
call ss(a1=a1,a2=a2,      a3=a3,k1=1,k2=0,k3=1)
if (any(a1/=c+1  )) print *,361
if (any(a3/=c+1  )) print *,362
a1=c  
a2=>null()
a3=>null()
call ss(a1,a2,a3     ,k1=1,k2=0,k3=0)
if (any(a1/=c+1  )) print *,461
allocate(a1(3),source=c)
a2=>null()
a3=>null()
call ss(a1,a2,a3=a3              ,k1=1,k2=0,k3=0)
if (any(a1/=c+1)) print *,261
!
call ss(p1,p2,p3,kk1,kk2,kk3 )
if (kk1==1) then
if (any(p1/=c+1  )) print *,201
endif
if (kk2==1) then
if (any(p2/=c+1  )) print *,211
endif
if (kk3==1) then
if (any(p3/=c+1  )) print *,221
endif
end subroutine
subroutine s0
integer,pointer ::x1(:)=>null()
integer,pointer ::x2(:)=>null()
integer,pointer ::x3(:)=>null()
integer,pointer ::p1(:)=>null()
integer,pointer ::p2(:)=>null()
integer,pointer ::p3(:)=>null()
call s1(p1,p2,p3,kk1=0,kk2=0,kk3=0)
call s1(x1,x2,x3,         kk1=0,kk2=0,kk3=0)
allocate(p1(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if (any(p1/=c+1)) print *,301
allocate(p1(3),source=c)
call s1(p2=x2,p3=x3,p1=p1      ,kk1=1,kk2=0,kk3=0)
if (any(p1/=c+1)) print *,301
allocate(p2(3),source=c)
call s1(x1,p3=x3,p2=p2      ,kk1=0,kk2=1,kk3=0)
if (any(p2/=c+1)) print *,301
allocate(p3(3),source=c)
call s1(x1,x2,p3=p3      ,kk1=0,kk2=0,kk3=1)
if (any(p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p1(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=0)
if (any(p1/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p2(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=0)
if (any(p2/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=0,kk3=1)
if (any(p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p1(3),source=c)
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=1,kk2=0,kk3=1)
if (any(p1/=c+1)) print *,301
if (any(p3/=c+1)) print *,301
p1=>null()
p2=>null()
p3=>null()
allocate(p2(3),source=c)
allocate(p3(3),source=c)
call s1(p1=p1,p2=p2,p3=p3,kk1=0,kk2=1,kk3=1)
if (any(p2/=c+1)) print *,301
if (any(p3/=c+1)) print *,301
end subroutine
end
use m1
call s0
print *,'pass'
end

