      INTEGER :: VECTOR(5), FIELD0
      LOGICAL :: MASK1(3, 3)
      VECTOR = (/(I, I = 1, 5)/)
      I = -2
      MASK1 = .FALSE.
      MASK1(1, 3) = .TRUE.
      MASK1(2, 2) = .TRUE.
      MASK1(3, 3) = .TRUE.
      FIELD0 = 2000
      CALL SUB(VECTOR, MASK1, FIELD0, I)
      print *,'pass'
      CONTAINS
      SUBROUTINE SUB(VECTOR, MASK, FIELD, J)
      INTEGER :: VECTOR(:), FIELD
      LOGICAL :: MASK(:, :)
      CALL SUB_PRINT(UNPACK(VECTOR, MASK(:J, :), FIELD))
      END SUBROUTINE
      SUBROUTINE SUB_PRINT(RESULT)
      INTEGER :: RESULT(:, :)
      if (any(SHAPE(RESULT)/=(/0,3/)))print *,'error'
      END SUBROUTINE
      END
