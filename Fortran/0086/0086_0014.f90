call s1
call s2
print *,'pass'
contains
subroutine s1
type t
real*4::r1(2,3),r2(2,3)
end type
type(t)::tt
tt%r2=2
tt%r1=tt%r2**2
if(any(tt%r1/=reshape([(4.0,k=1,6)],[2,3]))) print *,'err1'
end subroutine s1
subroutine s2
type t
real*8::r1(2,3),r2(2,3)
end type
type(t)::tt
tt%r2=2
tt%r1=tt%r2**2
if(any(tt%r1/=reshape([(4.0_8,k=1,6)],[2,3]))) print *,'err2'
end subroutine s2
end
