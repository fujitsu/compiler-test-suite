type a
 integer x
end type
type(a), allocatable ::z(:)
call s(z)
print *,'pass'
contains
subroutine s(z)
type(a) ::v,t,z
volatile i,v,t,z
allocatable i(:),t(:),z(:)
allocate(i(2),t(2),z(2))
i=1
if (any(i/=1))print *,'fail'
v%x=1
if((v%x/=1))print *,'fail'
t(1)%x=1
if(t(1)%x/=1)print *,'fail'
t=a(2)
if(any(t%x/=2))print *,'fail'
z(2)%x=3
if(z(2)%x/=3)print *,'fail'
z=a(4)
if(any(z%x/=4))print *,'fail'
end subroutine 
end
