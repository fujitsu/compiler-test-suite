module m1
type y
  complex,allocatable:: x1(:)
end type
complex,target:: a(-3:-1)=[11,12,13]
complex,target:: v(3)=-[2,1,3]
complex,target:: w(3)
complex::c=0
type q
complex,allocatable       ::f(:)
end type
type(q)::g
contains
subroutine s0
end subroutine
subroutine z()
allocate(g%f,source=a)
c=c+1
end subroutine 
end
subroutine s1
use m1
complex,allocatable:: x
allocate (x , mold= g%f(-2) )
end
subroutine s2
use m1
complex,allocatable:: x
allocate (x , source=g%f(-2)  )
if ((x/=12       )) print *,2132
end
use m1
call s0
call z
do k=1,20
call s1
call s2
c=0
end do
print *,'pass'
end


