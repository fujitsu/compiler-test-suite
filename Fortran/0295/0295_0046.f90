subroutine s0
type y
integer,allocatable,dimension(:)::a
end type
type(y),allocatable,dimension(:)::v
character(100)::msg,msg2
integer(8)::n1,n2
msg='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
msg2=msg
m=1
allocate(v(m+1),stat=k)
allocate(v(m+1)%a(m+1),stat=k,errmsg=msg)
v(2)%a=1
n1=loc(v(2)%a)
if (k/=0)print *,301
if (msg/=msg2)print *,302
allocate(v(m+1)%a(m+1),stat=k,errmsg=msg)
n2=loc(v(m+1)%a)
if (k==0)print *,401
if (msg==msg2)print *,402
if (n1/=n2)print *,403
if (any(v(2)%a/=1))print *,404
end
subroutine s1
type y
integer,allocatable,dimension(:)::a
end type
type(y),allocatable,dimension(:)::v
character(100)::msg,msg2
integer(8)::n1,n2
msg='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
msg2=msg
m=1
allocate(v(m+1),stat=k)
allocate(v(m+1)%a(m+1),stat=k,errmsg=msg)
v(2)%a=1
n1=loc(v(2)%a)
if (k/=0)print *,301
if (msg/=msg2)print *,302
allocate(v(m+1)%a(m+1),stat=k,errmsg=msg)
n2=loc(v(m+1)%a)
if (k==0)print *,401
if (msg==msg2)print *,402
if (n1/=n2)print *,403
if (any(v(2)%a/=1))print *,404
end
subroutine s2
type x1
 integer::a1
 integer,allocatable,dimension(:)::a2
end type
type x2
type(x1),allocatable,dimension(:)::a
end type
type(x2),allocatable,dimension(:)::v
m=1
allocate(v(2))
allocate(v(m+1)%a(2))
allocate(v(m+1)%a(2)%a2(3))
v(m+1)%a(2)%a1=1
v(m+1)%a(2)%a2=(/2,3,4/)
if (     allocated(v(m+1)%a(1)%a2))print *,101
if (.not.allocated(v(m+1)%a(2)%a2))print *,102
if (v(m+1)%a(2)%a1/=1)print *,103
if (any(v(m+1)%a(2)%a2/=(/2,3,4/)))print *,104
allocate(v(m+1)%a(m+1),stat=k)
if (k==0)print *,k
if (     allocated(v(m+1)%a(1)%a2))print *,201
if (.not.allocated(v(m+1)%a(2)%a2))print *,202
if (v(m+1)%a(2)%a1/=1)print *,203
if (any(v(m+1)%a(2)%a2/=(/2,3,4/)))print *,204
end
subroutine s3
type x1
 integer::a1
 integer,pointer    ,dimension(:)::a2
end type
type x2
type(x1),pointer    ,dimension(:)::a
end type
type(x2),allocatable,dimension(:)::v
m=1
allocate(v(2))
allocate(v(m+1)%a(2))
allocate(v(m+1)%a(2)%a2(3))
v(m+1)%a(1)%a2=>null()
v(m+1)%a(2)%a1=1
v(m+1)%a(2)%a2=(/2,3,4/)
if (     associated(v(m+1)%a(1)%a2))print *,101
if (.not.associated(v(m+1)%a(2)%a2))print *,102
if (v(m+1)%a(2)%a1/=1)print *,103
if (any(v(m+1)%a(2)%a2/=(/2,3,4/)))print *,104
allocate(v(m+1),stat=k)
if (k==0)print *,k
if (     associated(v(m+1)%a(1)%a2))print *,201
if (.not.associated(v(m+1)%a(2)%a2))print *,202
if (v(m+1)%a(2)%a1/=1)print *,203
if (any(v(m+1)%a(2)%a2/=(/2,3,4/)))print *,204
end

call s3
call s2
call s1
call s0
print *,'pass'
end
