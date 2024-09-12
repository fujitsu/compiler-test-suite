interface
 function func_s1(s1) result(rst)
  character(kind=1) :: s1
  character(kind=1) :: rst
 end function
 function func_s2(s2) result(rst)
  character(kind=1,len=2) :: s2
  character(kind=1,len=2) :: rst
 end function
 function func(i) result(rst)
  character :: i,rst
 end function
end interface

procedure(func),pointer    :: p
procedure(),pointer        :: p0
procedure(func_s1),pointer :: p1
procedure(func_s2),pointer :: p2

procedure(character),pointer :: pp

call sub_s1(p)
call sub_s1(pp)
call sub_s1(p1)
call sub_s2(p2)

print *,'pass'

contains
 subroutine sub_s1(p1)
  interface
   function func_s1(s1) result(rst)
    character(kind=1) :: s1
    character(kind=1) :: rst
   end function
  end interface
  procedure(func_s1),pointer :: p1
 end subroutine
 subroutine sub_s2(p2)
  interface
   function func_s2(s2) result(rst)
    character(kind=1,len=2) :: s2
    character(kind=1,len=2) :: rst
   end function
  end interface
  procedure(func_s2),pointer :: p2
 end subroutine
end

function func_s1(s1) result(rst)
 character(kind=1) :: s1
 character(kind=1) :: rst
 rst=s1
end function
function func_s2(s2) result(rst)
 character(kind=1,len=2) :: s2
 character(kind=1,len=2) :: rst
 rst=s2
end function
function func(i) result(rst)
 character :: i,rst
 rst=i
end function
