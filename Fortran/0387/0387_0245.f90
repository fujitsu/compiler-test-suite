program main
implicit none

interface
 function func1(i) result(j)
  character i,j
 end function
 function func2(i,j) result(k)
  interface
   function func1(i) result(j)
    character i,j
   end function
  end interface
  procedure (func1),pointer :: i,j
  logical :: k
 end function
end interface

procedure(func2),pointer :: pp
procedure(func1),pointer :: pf1,pf2
character :: c1,c2
logical :: ll
pf1=>func1
pp=>func2

ll = pp(pf1,pf2)
if (ll.neqv..true.) print *,'fail'

c1='a'
c2=pf2(c1)

if (c1.ne.c2) print *,'fail'
print *,'pass'

end program main

function func2(i,j) result(k)
 interface
  function func1(i) result(j)
   character i,j
  end function
 end interface
 procedure (func1),pointer :: i,j
 logical :: k
 character :: c1='a',c2
 j=>i
 c2=j(c1)
 if (c2.ne.'a') then
  k=.false.
 else
  k=.true.
 endif
end function

function func1(i) result(j)
 character i,j
 j=i
end function
