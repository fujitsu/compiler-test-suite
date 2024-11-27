interface
 subroutine subA(pp)
  procedure(),pointer :: pp
 end subroutine
 subroutine subB(pp)
  procedure(integer),pointer :: pp
 end subroutine
end interface

procedure(subA) :: out_subA
procedure(subB) :: out_subB

procedure(subA),    pointer :: psp1
procedure(subB),    pointer :: psp2
procedure(),        pointer :: ppp
procedure(integer), pointer :: pip

call subA(pip)
call subA(ppp)

call subB(pip)
call subB(ppp)

call out_subA(pip)
call out_subA(ppp)

call out_subB(pip)
call out_subB(ppp)

call sub1(psp1)
call sub1(psp2)

call sub2(psp1)
call sub2(psp2)

call sub3(subA)
call sub3(subB)
call sub3(out_subA)
call sub3(out_subB)

call sub4(subA)
call sub4(subB)
call sub4(out_subA)
call sub4(out_subB)

contains
 subroutine sub1(p)
  interface
   subroutine subA(pp)
    procedure(),pointer :: pp
   end subroutine
  end interface
  procedure(subA), pointer :: p
 end subroutine
 subroutine sub2(p)
  interface
   subroutine subB(pp)
    procedure(integer),pointer :: pp
   end subroutine
  end interface
  procedure(subB), pointer :: p
 end subroutine
 subroutine sub3(out_subA)
  interface
   subroutine subA(pp)
    procedure(),pointer :: pp
   end subroutine
  end interface
  procedure(subA) :: out_subA
 end subroutine
 subroutine sub4(out_subB)
  interface
   subroutine subB(pp)
    procedure(integer),pointer :: pp
   end subroutine
  end interface
  procedure(subB) :: out_subB
 end subroutine

end

subroutine subA(pp)
 procedure(),pointer :: pp
end subroutine
subroutine subB(pp)
 procedure(integer),pointer :: pp
end subroutine

subroutine out_subA(pp)
 procedure(),pointer :: pp
end subroutine
subroutine out_subB(pp)
 procedure(integer),pointer :: pp
end subroutine
