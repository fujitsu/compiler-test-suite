PROGRAM test
  REAL,pointer:: a(:,:)
  allocate(a(2,2))
  a(1,1) = 1.4
  a(1,2) = 2.0
  a(2,1) = 1.8
  a(2,2) = 2.2
  call sub(a)
  print*,"pass"

  contains
  subroutine sub(a)
  implicit none
  REAL ,target :: a(:,:)
  REAL:: b(2,2)
  b = BESSEL_J0(a)
    if( .not.(b(1,1)>0.54 .and. b(1,1)<0.58))  print *,101
    if( .not.(b(2,1)>0.30 .and. b(2,1)<0.35))  print *,102
    if( .not.(b(1,2)>0.20 .and. b(1,2)<0.25))  print *,103
    if( .not.(b(2,2)>0.09 .and. b(2,2)<0.12))  print *,104
  end subroutine sub
END PROGRAM
