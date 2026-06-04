interface
 function func(i) result(j)
  integer i,j
 end function
 subroutine sub(i)
  integer i
 end subroutine
 function func1(i) result(j)
  interface
   function func2(i) result(j)
    integer i,j
   end function
  end interface
  procedure(func2),pointer:: i,j
 end function
 function func3(i) result(j)
  interface
   subroutine func4(i)
    integer i
   end subroutine
  end interface
  procedure(func4),pointer:: i,j
 end function
end interface

procedure (func), pointer :: pfp,pfp2
procedure (sub), pointer :: psp,psp2
pfp=>func
psp=>sub

psp2 => func3(psp)
pfp2 => func1(pfp)

print *,'pass'

end

function func(i) result(j)
 integer i,j
 j=i
end function
subroutine sub(i)
 integer i
 i=1
end subroutine

function func1(i) result(j)
 interface
  function func2(i) result(j)
   integer i,j
  end function
 end interface
 integer xx
 procedure(func2),pointer:: i,j
 j=>func2
 xx=j(1)
 if (xx.ne.1) print *,'fail'
end function

function func2(i) result(j)
 integer i,j
 j=i
end function

function func3(i) result(j)
 interface
  subroutine func4(i)
   integer i
  end subroutine
 end interface
 integer xx
 procedure(func4),pointer:: i,j
 j=>i
 j=>func4
 call j(xx)
 if (xx.ne.1) print *,'fail'
end function

subroutine func4(i)
 integer i
 i=1
end subroutine
