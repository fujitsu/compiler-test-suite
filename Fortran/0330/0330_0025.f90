module mdef
type person
  integer::age
  character(len=20)::name
  logical::flag
end type
end module

use mdef
interface operator (==)
function fun(x,y)
use mdef
type(person),intent(in)::x,y
logical::fun
end function 
end interface

type(person)::man1,man2
integer::s,i
s=0
i=0
man1%age=20
man1%name='foo'
man1%flag=.false.
man2=person(21,'foo2',.true.)
do while ( .not. (man2 == person(22,'foo2',.true.)) )
  s=s+i
  i=i+1
  man2%age = i
end do
if ( s == 231 ) then
  print *,'pass'
else
  print *,man1
  print *,man2
  print *,s
  stop
endif
end

function fun(x,y)
use mdef
type(person),intent(in)::x,y
logical::fun
if ( x%age == y%age ) then
  fun = .true.
else
  fun = .false.
endif
end function
