MODULE m1

TYPE base
  INTEGER::int1
  CONTAINS
    PROCEDURE:: t_p=>prc2
    GENERIC:: ASSIGNMENT(=) => t_p
END TYPE

TYPE t0
  INTEGER::int2
  TYPE(base)::base_cmp
  CONTAINS
    PROCEDURE:: t_prc1=>prc1
    GENERIC:: ASSIGNMENT(=) => t_prc1
END TYPE

TYPE t1
  INTEGER:: x11
  TYPE(t0)::t0_cmp
  CONTAINS
    PROCEDURE:: t_prc=>prc
    GENERIC:: ASSIGNMENT(=) => t_prc
END TYPE
CONTAINS
SUBROUTINE   prc(x,y)
  CLASS(t1),INTENT(INOUT)::x
  CLASS(t1),INTENT(IN)::y
  x%x11 = y%x11+100
  x%t0_cmp = y%t0_cmp
END SUBROUTINE
SUBROUTINE   prc1(x,y)
  CLASS(t0),INTENT(INOUT)::x
  CLASS(t0),INTENT(IN)::y
  x%int2=y%int2
  x%base_cmp=y%base_cmp
END SUBROUTINE
SUBROUTINE   prc2(x,y)
  CLASS(base),INTENT(INOUT)::x
  CLASS(base),INTENT(IN)::y
  x%int1=y%int1+300
END SUBROUTINE
END MODULE

MODULE m2
USE m1
TYPE t2
  INTEGER:: x21
  TYPE(t1):: x22
END TYPE
END MODULE

PROGRAM MAIN
USE m2
CALL s1
CONTAINS
SUBROUTINE s1
  TYPE(t2):: v22
  v22=fun()
  IF (v22%x21 .EQ. 11)PRINT *,'pass1/4'
  IF (v22%x22%x11 .EQ. 112)PRINT *,'pass2/4'
  IF (v22%x22%t0_cmp%int2 .EQ. 100)PRINT *,'pass3/4'
  IF (v22%x22%t0_cmp%base_cmp%int1 .EQ.500)PRINT*,'pass4/4'
END SUBROUTINE

FUNCTION fun()
  TYPE(t2)::fun
  fun%x21=11
  fun%x22%x11=12
  fun%x22%t0_cmp%int2=100
  fun%x22%t0_cmp%base_cmp%int1=200
END FUNCTION
END
