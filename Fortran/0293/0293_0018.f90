PROGRAM test
  IMPLICIT NONE
  REAL*8, PARAMETER :: rpara = 1.d0

  COMPLEX*8, PARAMETER :: cpara = (rpara, rpara) 

  COMPLEX*8 :: id_spin(1)

  data id_spin / (rpara,rpara)/
  write(1,*) rpara,cpara,id_spin
print *,'pass'
END PROGRAM test

