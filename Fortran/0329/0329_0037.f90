module mdef
contains
pure function fun(a,b,c)
real,intent(in)::a,b,c
real::fun
fun=(a+b+c)/2.0
end function
end module

module definition
type coordinates
real::x,y
end type coordinates
type ten
type(coordinates) a,b,c
end type ten

interface operator(.to.)
module procedure distance
end interface
interface assignment(=)
module procedure area
end interface

contains
pure real function distance(a,b)
type(coordinates),intent(in)::a,b
distance=sqrt((a%x-b%x)**2+(a%y-b%y)**2)
end function distance

subroutine area(m,triangle)
use mdef
type(ten),intent(in)::triangle
real::kab,kbc,kca,p
real,intent(out)::m
kab=triangle%a.to.triangle%b
kbc=triangle%b.to.triangle%c
kca=triangle%c.to.triangle%a
p=fun(kab,kbc,kca)
m=sqrt(p*(p-kab)*(p-kbc)*(p-kca))
end subroutine area
end module

program main
use definition
type(ten) triangle
real::s
n=0
do ii=0,4
triangle%a%x=0.0
triangle%a%y=0.0+ii*2
triangle%b%x=0.0
triangle%b%y=1.0+ii*3
triangle%c%x=1.0
triangle%c%y=0.0
s=triangle
if ( abs(s - 0.5*real(ii+1)) < 0.0001 ) then
n=n+1
end if
end do
if ( n == 5 ) then
print *,'pass'
else
print *,'ng'
print *,'s=',s,n
end if

end program
