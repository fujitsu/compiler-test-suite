PROGRAM main

integer :: flag
CLASS(*),ALLOCATABLE :: A

flag = 1

allocate(integer(1)::A)
SELECT TYPE(A)
 TYPE IS (integer(1))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(integer(2)::A)
SELECT TYPE(A)
 TYPE IS (integer(2))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(integer(4)::A)
SELECT TYPE(A)
 TYPE IS (integer(4))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(integer(8)::A)
SELECT TYPE(A)
 TYPE IS (integer(8))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(character(kind=1,len=1)::A)
SELECT TYPE(A)
 TYPE IS (character(kind=1,len=*))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(real(4)::A)
SELECT TYPE(A)
 TYPE IS (real(4))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(real(8)::A)
SELECT TYPE(A)
 TYPE IS (real(8))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(real(16)::A)
SELECT TYPE(A)
 TYPE IS (real(16))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(logical(1)::A)
SELECT TYPE(A)
 TYPE IS (logical(1))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(logical(2)::A)
SELECT TYPE(A)
 TYPE IS (logical(2))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(logical(4)::A)
SELECT TYPE(A)
 TYPE IS (logical(4))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(logical(8)::A)
SELECT TYPE(A)
 TYPE IS (logical(8))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(complex(4)::A)
SELECT TYPE(A)
 TYPE IS (complex(4))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(complex(8)::A)
SELECT TYPE(A)
 TYPE IS (complex(8))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(complex(16)::A)
SELECT TYPE(A)
 TYPE IS (complex(16))
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

allocate(double precision::A)
SELECT TYPE(A)
 TYPE IS (double precision)
  A = 1.0
 CLASS DEFAULT
  flag = 0
END SELECT
DEALLOCATE(A)

if (flag .EQ. 1) then
  print*,'PASS'
else
 print *,'FAIL'
endif 

END PROGRAM
