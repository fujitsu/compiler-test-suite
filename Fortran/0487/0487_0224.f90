     1  TYPE TY
       TYPE (TT), ALLOCATABLE :: OBJTT
     3  END TYPE

     5  TYPE TT
     6  CHARACTER(LEN=:),ALLOCATABLE :: MSG
     7  END TYPE

     9  TYPE(TY) :: OBJ1
    10  TYPE(TY) :: OBJ2

    12  ALLOCATE(OBJ1%OBJTT)
    13  ALLOCATE(CHARACTER(LEN=5)::OBJ1%OBJTT%MSG)

    15  ALLOCATE(OBJ2%OBJTT)
    16  ALLOCATE(CHARACTER(LEN=6)::OBJ2%OBJTT%MSG)

    18  OBJ1%OBJTT%MSG = "HELLO"
    19  OBJ2%OBJTT%MSG = "WORLD"

    21  OBJ1 = OBJ2
print *,'pass'
      END