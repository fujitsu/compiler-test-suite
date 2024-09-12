type :: t1(k1,k2)
integer,kind :: k1,k2
real(k1) a(k2)
end type
type,extends(t1) :: t2(k3)
integer,kind :: k3
logical(k3) flag
end type
type(t1(16,0))::zzz
type(t2(8,1,8))::zzz1
if(zzz%k1/=16) print *,'err'
if(zzz%k2/=0) print *,'err'
if(zzz1%k1/=8) print *,'err'
if(zzz1%k2/=1) print *,'err'
if(zzz1%k3/=8) print *,'err'
print *,'pass'
end
