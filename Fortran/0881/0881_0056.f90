MODULE MODULE3
IMPLICIT NONE

  LOGICAL::x

  TYPE base
    integer ::int1
  END TYPE

  TYPE ,EXTENDS(base)::deriv
   INTEGER :: int2
  END TYPE
END MODULE
 
MODULE MODULE4
IMPLICIT NONE

  TYPE base
    INTEGER ::ii
  END TYPE
 
  TYPE ,EXTENDS(base):: deriv
    INTEGER :: kk
  END TYPE
END MODULE
 
PROGRAM MAIN
 
IMPLICIT NONE
 
INTERFACE
  SUBROUTINE sub2
  END SUBROUTINE
END INTERFACE
 
call sub2()
END PROGRAM
 
SUBROUTINE sub1(dmyptr)
  use MODULE3
  CLASS(*)::dmyptr
  TYPE(deriv)::baseobj
  LOGICAL::res
  res=EXTENDS_TYPE_OF(dmyptr,baseobj)
  if(res .eqv. .false.) then
    print*,'pass'
  else
    print*,'fail'
  endif
END SUBROUTINE
 
SUBROUTINE sub2()
  use MODULE4
INTERFACE
  SUBROUTINE sub1(dmy1)
    CLASS(*)::dmy1
  END SUBROUTINE
end interface
  CLASS(base),POINTER::ptr_base
  TYPE(deriv),TARGET::tar_ty1
  ptr_base=>tar_ty1
  call sub1(ptr_base)
END SUBROUTINE

