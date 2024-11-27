MODULE funcs

CONTAINS
  SUBROUTINE Two (x, r)
    REAL :: x, r

    r = 2. * x
  END SUBROUTINE Two

  SUBROUTINE Three (x, s, r)
    REAL :: x, r 
    INTERFACE
       SUBROUTINE s (x, r)
         REAL :: x, r
       END SUBROUTINE s
    END INTERFACE

    CALL s (x, r) 
    r = 3. * r
  END SUBROUTINE Three

END MODULE funcs

PROGRAM MAIN

  USE funcs 
  REAL:: x, y

  x = 2. 
  CALL Three (x, Two, y)

  if (any(abs((/x, y/)-(/2.,12./))>0.0001))write(6,*) "NG"
print *,'pass'
END PROGRAM MAIN
