subroutine s1
character(:),allocatable,dimension(:)::a
character(100)::msg,msg2
integer(8)::n1,n2
msg='xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
msg2=msg
m=1
allocate(character(m+1)::a(m+1),stat=k,errmsg=msg)
a='11'
n1=loc(a)
if (k/=0)print *,301
if (msg/=msg2)print *,302
allocate(character(m+1)::a(m+1),stat=k,errmsg=msg)
n2=loc(a)
if (k==0)print *,401
if (msg==msg2)print *,402
if (n1/=n2)print *,403
if (any(a/='11'))print *,404
end
subroutine s2
type x1
 integer::a1
 character(:),allocatable,dimension(:)::a2
end type
type(x1),allocatable,dimension(:)::a
m=1
allocate(a(2))
allocate(character(m+1)::a(2)%a2(3))
a(2)%a1=1
a(2)%a2=(/'22','33','44'/)
if (     allocated(a(1)%a2))print *,101
if (.not.allocated(a(2)%a2))print *,102
if (a(2)%a1/=1)print *,103
if (any(a(2)%a2/=(/'22','33','44'/)))print *,104
allocate(a(m+1),stat=k)
if (k==0)print *,k
if (     allocated(a(1)%a2))print *,201
if (.not.allocated(a(2)%a2))print *,202
if (a(2)%a1/=1)print *,203
if (any(a(2)%a2/=(/'22','33','44'/)))print *,204
end

call s2
call s1
print *,'pass'
end
