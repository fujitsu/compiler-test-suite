MODULE mod1

  TYPE ty0
   INTEGER :: i0=0
   CONTAINS
   FINAL :: f0,fa0
  END TYPE

  TYPE :: ty1
   INTEGER :: I1=1
   TYPE(ty0),ALLOCATABLE :: objty0(:)
   CONTAINS
   FINAL :: f1,fa1
  END TYPE

  TYPE, extends(ty1) :: ty2
   INTEGER :: I2=2
   CONTAINS
   FINAL :: f2,fa2
  END TYPE

  TYPE ty3
   INTEGER :: I3=3
   CHARACTER :: ch='0'
   TYPE(ty2) :: objty2(2)
   CONTAINS
   FINAL :: f3,fa3
  END TYPE

CONTAINS
 
 SUBROUTINE f0( dmy )
  TYPE(ty0), INTENT(INOUT):: dmy
  print*,"F0 Call ",dmy%i0
 END SUBROUTINE f0

 SUBROUTINE fa0( dmy )
 TYPE(ty0), INTENT(INOUT):: dmy(:)
  print*,"Fa0 Call ",dmy%i0

 END SUBROUTINE fa0

 SUBROUTINE f1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy
  print*,"F1 Call ",dmy%I1
 END SUBROUTINE f1

 SUBROUTINE fa1( dmy )
 TYPE(ty1), INTENT(INOUT):: dmy(:)
  print*,"Fa1 Call ",dmy%I1
 END SUBROUTINE fa1
 
SUBROUTINE f2( dmy )
 TYPE(ty2), INTENT(INOUT):: dmy
  print*,"F2 Call ",dmy%I2
 END SUBROUTINE f2

 SUBROUTINE fa2( dmy )
 TYPE(ty2), INTENT(INOUT):: dmy(:)
  print*,"Fa2 Call ",dmy%I2
 END SUBROUTINE fa2

SUBROUTINE f3( dmy )
 TYPE(ty3), INTENT(INOUT):: dmy
  print*,"F3 Call ",dmy%I3

 END SUBROUTINE f3

 SUBROUTINE fa3( dmy )
  TYPE(ty3), INTENT(INOUT):: dmy(:)
  print*,"Fa3 Call ",dmy%I3
  
 END SUBROUTINE fa3

END MODULE mod1

PROGRAM main
  USE mod1
  CALL SelectFOO()


  CONTAINS
   SUBROUTINE SelectFOO()
     SELECT CASE(Foo1(Foo()))
      CASE ('ABCDEFG')
         PRINT*,'PASS'
      CASE default
         PRINT*,'FAIL'
     END SELECT
   END SUBROUTINE

     FUNCTION Foo() RESULT(ty3_res)
      TYPE(ty3), ALLOCATABLE :: ty3_res
      ALLOCATE(ty3_res)
      ALLOCATE(ty3_res%objty2(1)%objty0(2))
      ALLOCATE(ty3_res%objty2(2)%objty0(2))
      ty3_res%I3 = 100
      ty3_res%objty2%I2 = 200
      ty3_res%objty2%I1 = 300
      ty3_res%objty2(1)%objty0%i0 = 400
      ty3_res%objty2(2)%objty0%i0 = 500
      ty3_res%ch = 'Compiler'
    END FUNCTION

    FUNCTION Foo1(dmy) RESULT(res)
     TYPE(ty3), intent(in) :: dmy
     character (LEN = 7) :: res
     res = 'ABCDEFG'
  END FUNCTION

END PROGRAM
