
program xyz
  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p1 =>t1
     logical :: s0 = .TRUE.
     integer,pointer :: p2(:) =>ta
  end type ty1
  type (ty1) :: str
  type (ty1),target :: str2
  type (ty1),pointer :: p0=>str2

  
  call sub(str,p0)

contains
  subroutine sub(tt, pp)
    type (ty1) :: tt
    type (ty1),pointer :: pp

    print *, tt%s0,tt%p1,tt%p2
    print *, pp%s0,pp%p1,pp%p2
  end subroutine sub
end program
