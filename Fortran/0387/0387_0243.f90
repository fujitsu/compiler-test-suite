program main
implicit none

interface
 function func1(i) result(j)
  character i,j
 end function
 subroutine sub1(i,j)
  interface
   function func1(i) result(j)
    character i,j
   end function
  end interface
  procedure (func1),pointer :: i,j
 end subroutine
end interface

procedure(sub1),pointer :: pp
procedure(func1),pointer :: pf1,pf2

character :: c1,c2

pf1=>func1
pp => sub1
call pp(pf1,pf2)

c1='a'
c2=pf2(c1)

if (c2.ne.c1) print *,'fail'
print *,'pass'

end program main

subroutine sub1(i,j)
 interface
  function func1(i) result(j)
   character i,j
  end function
 end interface
 procedure (func1),pointer :: i,j
 j=>i
end subroutine

function func1(i) result(j)
 character i,j
 j=i
end function


