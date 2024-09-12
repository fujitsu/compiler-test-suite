program main

interface
 subroutine sub1(i)
  character :: i,j='a'
 end subroutine
 subroutine sub2(i,j)
  interface
   subroutine sub1(i)
    character :: i,j='a'
   end subroutine
  end interface
  procedure (sub1),pointer :: i,j
 end subroutine
end interface

procedure(sub2),pointer :: pp
procedure(sub1),pointer :: pf1,pf2

character :: c1,c2

pf1=>sub1
pp => sub2
call pp(pf1,pf2)

c1='a'
call pf2(c2)

print *,'pass'

end program main

subroutine sub2(i,j)
 interface
  subroutine sub1(i)
   character i,j
  end subroutine
 end interface
 procedure (sub1),pointer :: i,j
 j=>i
end subroutine

subroutine sub1(i)
 character :: i,j='a'
 i=j
end subroutine
