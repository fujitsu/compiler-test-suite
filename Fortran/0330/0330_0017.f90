module mdef
type person
  integer::age
  character(len=20)::name
  logical::flag
end type
end module

use mdef
interface operator (+)
integer function fun(x,y)
use mdef
type(person),intent(in)::x,y
end function 
end interface

type(person)::man1,man2
integer::s,i,p
s=0
i=0
p=22
man1%age=20
man1%name='foo'
man1%flag=.false.
man2=person(21,'foo2',.true.)
do i=1,1000,man2 + person(size((/(j,j=1,p,1)/)),'foo2',.true.) 
  s=s+i
end do
if ( s == 500500 ) then
  print *,'pass'
else
  print *,s
  print *,man1
  print *,man2
  print *,size((/(j,j=1,p,1)/))
endif
end

integer function fun(x,y)
use mdef
type(person),intent(in)::x,y
if ( x%age == y%age ) then
  fun = 2
else
  fun = 1
endif
end function
