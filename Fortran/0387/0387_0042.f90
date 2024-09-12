interface
 function func() result(rst)
  integer :: rst
 end function
 subroutine sub()
 end subroutine
 function func2(a) result(rst)
  interface
   subroutine sub()
   end subroutine
  end interface
  procedure(sub),pointer :: a,rst
 end function
end interface
procedure (func), pointer :: pfp
procedure (sub), pointer :: psp,psp2
pfp=>func
psp=>sub

psp2 => func2(psp)

print *,'pass'

end

function func() result(rst)
 integer :: rst
 rst=1
end function
subroutine sub()
end subroutine
function func2(a) result(rst)
 interface
  subroutine sub()
  end subroutine
 end interface
 procedure(sub),pointer :: a,rst
 rst=>a
end function

