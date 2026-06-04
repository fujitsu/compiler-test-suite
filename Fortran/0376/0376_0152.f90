interface
 function func(i) result(j)
  integer i,j
 end function
 subroutine sub(i)
  integer i
 end subroutine
 subroutine func1(i)
  interface
   function func2(i) result(j)
    integer i,j
   end function
  end interface
  procedure(func2),pointer:: i
 end subroutine
 subroutine func3(i)
  interface
   subroutine func4(i)
    integer i
   end subroutine
  end interface
  procedure(func4),pointer:: i
 end subroutine
end interface

procedure (func), pointer :: pfp
procedure (sub), pointer :: psp
pfp=>func
psp=>sub

call func3(psp)
call func1(pfp)

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

subroutine func1(i)
 interface
  function func2(i) result(j)
   integer i,j
  end function
 end interface
 integer xx
 procedure(func2),pointer:: i,j
 j=>i
 j=>func2
 xx=j(1)
 if (xx.ne.1) print *,'fail'
end subroutine

function func2(i) result(j)
 integer i,j
 j=i
end function

subroutine func3(i)
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
end subroutine

subroutine func4(i)
 integer i
 i=1
end subroutine

