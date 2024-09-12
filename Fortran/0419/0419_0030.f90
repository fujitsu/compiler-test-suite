call sss1
call sss2
print *,'pass'
end
subroutine sss1
type :: t1(k1,k2)
integer,kind :: k1,k2
real(k1),allocatable:: a(:)
end type
type,extends(t1) :: t2(k3)
integer,kind :: k3
logical(k3),allocatable::flag
end type
type,extends(t2) :: t3(k4)
integer,kind :: k4
end type
type(t1(4,2))::tt1
type(t2(4,2,4))::tt2
type(t3(k4=int(8.0),k1=4,k2=2,k3=4))::tt3
tt2%flag=.false.
if(tt1%k1/=4) print *,'err'
if(tt1%k2/=2) print *,'err'
if(tt2%k3/=4) print *,'err'
if(tt3%k4/=8) print *,'err'
if(kind(tt2%flag)/=4) print *,'err'
end
subroutine sss2
type :: t1(k1,k2,k9)
integer,kind :: k1,k2
integer,kind :: k9=1
real(k1),allocatable:: a(:)
end type
type,extends(t1) :: t2(k3)
integer,kind :: k3
logical(k3),allocatable::flag
end type
type,extends(t2) :: t3(k4)
integer,kind :: k4
end type
type(t1(4,2))::tt1
type(t2(4,2,4,1))::tt2
type(t3(k4=int(8.0),k1=4,k2=2,k3=4))::tt3
tt2%flag=.false.
if(tt1%k1/=4) print *,'err'
if(tt1%k2/=2) print *,'err'
if(tt2%k3/=1) print *,'err'
if(tt3%k4/=8) print *,'err'
if(kind(tt2%flag)/=1) print *,'err'
end
