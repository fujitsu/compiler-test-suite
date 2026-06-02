interface
 function func(i) result(j)
  integer i,j
 end function
 subroutine sub(i)
 end subroutine
 function func1(pf1) result(pf2)
  interface
   function func(i) result(j)
    integer i,j
   end function
  end interface
  procedure(func),pointer :: pf1,pf2
 end function
 subroutine sub1(ps1,ps2)
  interface
   subroutine sub(i)
   end subroutine
  end interface
  procedure(sub),pointer :: ps1,ps2
 end subroutine
end interface

integer i
procedure(func1),pointer :: pfp
procedure(sub1),pointer  :: psp
procedure(func),pointer  :: pfp2,pfp3
procedure(sub),pointer   :: psp2,psp3

pfp=>func1
pfp2=>func
pfp3=>pfp(pfp2)
i=pfp2(1)

if (i.ne.1) print *,'fail'

psp=>sub1
psp2=>sub
call psp(psp2,psp3)
call psp3(i)

if (i.ne.1) print *,'fail'

print *,'pass'

end

function func1(pf1) result(pf2)
 interface
  function func(i) result(j)
   integer i,j
  end function
 end interface
 procedure(func),pointer :: pf1,pf2
 pf2=>pf1
end function

function func(i) result(j)
 integer i,j
 j=i
end function

subroutine sub1(ps1,ps2)
 interface
  subroutine sub(i)
  end subroutine
 end interface
 procedure(sub),pointer :: ps1,ps2
 ps2=>ps1
end subroutine

subroutine sub(i)
 i=1
end subroutine
